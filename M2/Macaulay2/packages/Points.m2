newPackage(
	"Points",
    	Version => "0.1", 
    	Date => "Feb 23, 2005",
    	Author => "Mike Stillman <mike@math.cornell.edu>",
    	HomePage => "http://www.math.uiuc.edu/Macaulay2/",
    	Headline => "A Macaulay2 package for computing with ideals of points",
    	DebuggingMode => true
    	)

export (
     points,
     pointsByIntersection,
     reduceColumn,
     mutableIdentity,
     getColumnChange,
     makeRingMaps
     )

debug Macaulay2Core
points = method()
pointsByIntersection = method()

makeRingMaps = (M,R) -> (
     K := coefficientRing R;
     pts := entries transpose M;
     apply(pts, p -> map(K, R, p))
     )

addNewMonomial = (M,col,monom,maps) -> (
     -- M is an s by s+1 matrix, s=#points
     -- monom is a monomial
     -- maps is a list of s ring maps, which will give the values
     --  of the monom at the points
     -- replaces the 'col' column of M with the values of monom
     --    at the s points.
     scan(#maps, i -> M_(i,col) = maps#i monom)
     )

pointsByIntersection(Matrix,Ring) := (M,R) -> (
     flatten entries gens gb intersect apply (
       entries transpose M, p -> ideal apply(#p, i -> R_i - p#i)))
     
points(Matrix,Ring) := (M,R) -> (
     -- The columns of M form the points.  M should be a matrix of size
     -- n by s, where n is the number of variables of R
     --
     K := coefficientRing R;
     s := numgens source M;
     -- The local data structures:
     -- (P,PC) is the matrix which contains the elements to be reduced
     -- Fs is used to evaluate monomials at the points
     -- H is a hash table used in Gaussian elimination: it contains the
     --    pivot columns for each row
     -- L is the sum of monomials which is still to be done
     -- Lhash is a hashtable: Lhash#monom = i means that only 
     --    R_i*monom, ..., R_n*monom should be considered
     -- G is a list of GB elements
     -- inG is the ideal of initial monomials for the GB
     Fs := makeRingMaps(M,R);
     P := mutableMatrix map(K^s, K^(s+1), 0);
     PC := mutableMatrix map(K^(s+1), K^(s+1), 0);
     for i from 0 to s-1 do PC_(i,i) = 1_K;
     setColumnChange(P, PC);
     H := new MutableHashTable; -- used in the column reduction step
     Lhash := new MutableHashTable; -- used to determine which monomials come next
     L := 1_R;
     Lhash#L = 0; -- start with multiplication by R_0
     thiscol := 0;
     G := {};
     inG := trim ideal(0_R);
     inGB := forceGB gens inG;
     Q := {}; -- the list of standard monomials
     while L != 0 do (
	  -- First step: get the monomial to consider
	  L = L % inGB;
	  monom = someTerms(L,-1,1);
	  L = L - monom;
	  -- Now fix up the matrices P, PC
          addNewMonomial(P,thiscol,monom,Fs);
	  rawMatrixColumnScale(raw PC, raw(0_K), thiscol, false);
	  PC_(thiscol,thiscol) = 1_K;
          isLT := reduceColumn(P,H,thiscol);
	  if isLT then (
	       -- we add to G, inG
	       inG = inG + ideal(monom);
	       inGB = forceGB gens inG;
	       g = sum apply(toList(0..thiscol-1), i -> PC_(i,thiscol) * Q_i);
	       G = append(G, PC_(thiscol,thiscol) * monom + g);
	       )
	  else (
	       -- we modify L, Lhash, thiscol, and also PC
	       Q = append(Q, monom);
	       f = sum apply(toList(Lhash#monom .. numgens R - 1), i -> (
			 newmon := monom * R_i;
			 Lhash#newmon = i;
			 newmon));
	       L = L + f;
	       thiscol = thiscol + 1;
	       )
	  );
     (Q,inG,G)
     )

reduceColumn = (M,H,c) -> (
     -- M is a mutable matrix
     -- H is a hash table: H#r == c if column c has pivot for row r 
     -- returns true if the element reduces to 0
     M = raw M;
     r := rawNumberOfRows M - 1;
     while r >= 0 do (
	  a := M_(r,c);
	  if a != 0 then (
	       -- is there a pivot?
	       if not H#?r then (
		    b := 1//a;
		    rawMatrixColumnScale(M, b, c, false);
		    H#r = c;
		    return false;
		    )
	       else (
	       	    pivotc := H#r;
	       	    rawMatrixColumnChange(M, c, -a, pivotc, false);
	       ));
     	  r = r-1;
	  );
     true
     )

mutableIdentity = method()
mutableIdentity(Ring,ZZ) := (R,n) -> map(R,rawMutableIdentity(raw R,n,false))

getColumnChange = method()
getColumnChange(MutableMatrix) := (m) -> map(ring m, rawColumnChange raw m)

beginDocumentation()

document {
     Key => Points,
     "A package to compute with points in affine and projective spaces",
     PARA,
     Subnodes => {
	  TO (points,Matrix,Ring)
	  }
     }

end

restart
errorDepth = 0
load "Points.m2"
R = ZZ/32003[vars(0..4), MonomialOrder=>Lex]
M = matrix(ZZ/32003,  {{0, -9, 4, -2, -4, -9, -10, 6, -8, 0}, 
            {1, 0, -10, 9, 3, -4, 1, 1, -10, -3}, 
	    {5, 7, -4, -5, -7, 7, 4, 6, -3, 2}, 
	    {2, 8, 6, -6, 4, 3, 8, -10, 7, 8}, 
	    {-9, -9, 0, 4, -3, 9, 4, 4, -4, -4}})

time J = pointsByIntersection(M,R)
transpose matrix{oo}

time C = points(M,R)
transpose gens ideal C_2

M = random(ZZ^5, ZZ^150)

time J = pointsByIntersection(M,R);
transpose matrix{oo}

time C = points(M,R);
transpose gens ideal C_2
assert(J == C_2)

R = ZZ/32003[vars(0..4)]

K = ZZ/32003
R = K[vars(0..7), MonomialOrder=>Lex]
R = K[vars(0..7)]
M = random(K^8, K^500)
time C = points(M,R);
time J = pointsByIntersection(M,R);
assert(C_2 == J)

K = ZZ/32003
R = K[x_0 .. x_39]
M = random(K^40, K^80)
time C = points(M,R);


getColumnChange oo_0
apply(Fs, f -> f(a*b*c*d))
B = sort basis(0,2,R)
B = sum(flatten entries basis(0,2,R))
B = matrix{reverse terms B}
P = transpose matrix {apply(Fs, f -> f (transpose B))}
B * syz 
transpose oo
 -- column reduction:

P = mutableMatrix P 
H = new MutableHashTable
reduceColumn(P,H,0)
reduceColumn(P,H,1)
P
reduceColumn(P,H,2)
reduceColumn(P,H,3)
reduceColumn(P,H,4)
reduceColumn(P,H,5)
reduceColumn(P,H,6)
reduceColumn(P,H,7)
reduceColumn(P,H,8)
reduceColumn(P,H,9)
P
reduceColumn(P,H,10)
reduceColumn(P,H,11)
reduceColumn(P,H,12)
P

M = matrix{{1,2,3,4}}

K = ZZ/32003
M ** K


