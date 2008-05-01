-- In this file we translate many examples from Schubert into Schubert2
-- We include section III (EXAMPLES) from schubertmanual.txt in comments.

path = prepend("../", path)

loadPackage "Schubert2";

---- III.  EXAMPLES:
---- 
---- # Hilbert polynomial and Todd class of projective 3-space P^3.
---- > 
---- > proj(3,h,all): factor(chi(o(n*h)));
----                           1/6 (n + 3) (n + 2) (n + 1)
---- 

pt = basepoint n
X = use projectiveSpace_3(pt,VariableNames => {k,{h}})
factor chi OO(n*h)
assert( chi OO_X(n*h) == (n+1)*(n+2)*(n+3)*(1/6) )

---- > Ph[toddclass_];
----                                            2  2    3  3
----                          1 + 2 h t + 11/6 h  t  + h  t

todd Ph

---- #-------------------------------------------------------------------------
---- # Generation of formulas:
---- > 
---- > DIM:=4:
---- > A:=bundle(2,c):        # a bundle with Chern classes c1,c2 and rank 2
---- > B:=bundle(3,d):        # a bundle with Chern classes d1,d2,d3 and rank 3

(A,B) = bundle(4,{2,3},{a,b});

---- > chern(A);
----                                                2
----                                 1 + c1 t + c2 t

chern A

---- > segre(B);
----                              2        2      3                  3
----                1 + d1 t + (d1  - d2) t  + (d1  - 2 d1 d2 + d3) t
---- 
----                          4          2               2   4
----                     + (d1  - 3 d2 d1  + 2 d1 d3 + d2 ) t

segre B

---- > chern(A&*B);           # The Chern class of the tensor product
----                          2                 2                 2
---- 1 + (2 d1 + 3 c1) t + (d1  + 5 c1 d1 + 3 c1  + 2 d2 + 3 c2) t  +
---- 
----                          3                           2                    2   3
----   (6 c1 c2 + 2 d1 d2 + c1  + 2 d3 + 4 c1 d2 + 2 c1 d1  + 4 d1 c2 + 4 d1 c1 ) t
---- 
----                                     2          2               2
----    + (3 c1 d1 d2 + 6 d1 c1 c2 + 3 c2  + 3 c2 c1  + 2 d1 d3 + d2  + 3 c1 d3
---- 
----             2       2        2   2        3   4
----    + 2 c2 d1  + 3 c1  d2 + c1  d1  + d1 c1 ) t

chern(A**B)

---- > chern(3,symm(3,dual(A)));
----                                      3
----                                - 6 c1  - 30 c1 c2

chern(3,symm(3,dual(A)))

---- > segre(2,Hom(wedge(2,A),wedge(2,B)));
----                               2                 2
----                           3 d1  - 8 c1 d1 + 6 c1  - d2
---- 

segre(2,Hom(wedge(2,A),wedge(2,B)))

---- #-------------------------------------------------------------------------
---- ## Grassmannian of lines in P3:
---- > 
---- > grass(2,4,b,all): 

grass(2,4,b)

---- > chi(Gb,Symm(n,Qb));
----                              2            3
----                             n  + 1 + 1/6 n  + 11/6 n

chi Symm(n,Qb)

---- > chi(Gb,o(n*b1));
----                            4        3    23   2
----                      1/12 n  + 2/3 n  + ---- n  + 7/3 n + 1
----                                          12

chi OO_Gb(n*b_1)
assert( 1/12*n^4+2/3*n^3+23/12*n^2+7/3*n+1 == oo )

-- some other ways to do it:

chi (det Qb)^**n
factor oo
p = Gb.StructureMap
p_* (det Qb)^**n
assert( (n-2)*(n^3-18*n^2+71*n-6)*(1/12) == chi (det Qb)^**n )

---- > 
---- ## This should be a quadric in P5:
---- > 
---- > proj(5,H,all): chi(o(n*H)-o((n-2)*H));
----                            4        3    23   2
----                      1/12 n  + 2/3 n  + ---- n  + 7/3 n + 1
----                                          12

proj(5,H)
chi(o(n*H)-o((n-2)*H))

assert( oo == 1/12*n^4+2/3*n^3+23/12*n^2+7/3*n+1 )

---- #-------------------------------------------------------------------------
---- # Lines on a quintic threefold.  This is the top Chern class of the 
---- # 5th symmetric power of the universal quotient bundle on the Grassmannian
---- # of lines.
---- > 
---- > grass(2,5,c):        # Lines in P^4. 

grass(2,5,c)

---- > B:=symm(5,Qc):       # Qc is the rank 2 quotient bundle, B its 5th 
---- >                      # symmetric power.

B = symm(5,Qc)

---- > c6:=chern(rank(B),B):# the 6th Chern class of this rank 6 bundle.

c6 = chern(rank B,B)

---- > integral(c6);
----                                       2875

integral c6

assert( oo == 2875 )

---- 
---- #-------------------------------------------------------------------------
---- # Conics on a quintic threefold. This is the top Chern class of the 
---- # quotient of the 5th symmetric power of the universal quotient on the
---- # Grassmannian of 2 planes in P^5 by the subbundle of quintic containing the 
---- # tautological conic over the moduli space of conics.
---- > 
---- > grass(3,5,c):         # 2-planes in P^4.  

grass(3,5,c)

---- > B:=Symm(2,Qc):        # The bundle of conics in the 2-plane. 

B = symm(2,Qc)

---- > Proj(X,dual(B),z):    # X is the projective bundle of all conics. 

proj(X, dual B, z)

---- > A:=Symm(5,Qc)-Symm(3,Qc)&*o(-z):  # The rank 11 bundle of quintics 
---- >                                   # restricted to the universal conic. 

A = symm_5 Qc - symm_3 Qc ** o(-z)

---- > c11:=chern(rank(A),A):# its top Chern class.

c11 = chern(rank A, A)

---- > lowerstar(X,c11):     # push down to G(3,5).

X_* c11

---- > integral(Gc,");       # and integrate there.
----                                      609250

integral oo

assert( oo == 609250 )

-- here's a short cut:

integral chern A

assert( oo == 609250 )

---- #-------------------------------------------------------------------------
---- ## Count the number of space conics intersecting 8 given lines
---- > 
---- > grass(3,4,d,all):

grass(3,4,d)

---- > Proj(f,dual(symm(2,Qd)),e):

proj(f, dual symm_2 Qd, e)

---- > integral(Gd,lowerstar(f,(2*d1+e)^8));
----                                        92

integral f_* (2*d_1 + e)^8
assert( 92 == oo )

-- another way:

integral (2*d_1 + e)^8
assert( 92 == oo )

---- #-------------------------------------------------------------------------
---- # Conics tangent to 5 plane conics.  Each tangency is a degree 6
---- # condition on the P^5 of conics; but it contains the degenerate conics with  
---- # multiplicity 2.
---- > 
---- > proj(5,H,all):             # The P^5 of conics.  Tangent bundle needed for 
---- >                            # blowup.
---- > proj(2,h,all):             # The P^2 of double lines
---- > morphism(f,Ph,PH,[H=2*h]): # The Veronese embedding
---- > blowup(f):                 # Construct Bf, the space of complete conics
---- > integral((6*H-2*Ef)^5);    # Ef is the exceptional divisor.
----                                       3264
---- 
---- #-------------------------------------------------------------------------
---- # Adjunction formula.  Complete intersection in P^7.
---- > 
---- > proj(7,h,tan):             # P^7.  Tangentbundle needed.
---- > B:=o(n1)+o(n2)+o(n3):      # bundle of triples of forms, of degrees n1,n2,n3.
---- > bundlesection(Z,B):        # Z is the complete intersection
---- > cotbun:=-tangentbundle(Z): # the cotangent bundle
---- > chern(1,cotbun);           # the Chern class of the canonical bundle.
----                               - 8 h + n1 + n2 + n3
---- 
---- #-------------------------------------------------------------------------
---- # Euler characteristic of Horrocks-Mumford bundle
---- > 
---- > proj(4,h,tang):            # need tangentbundle for chi

proj(4,h)

---- > F:=sheaf(2,[5*h,10*h^2]):  # defines the Horrocks-Mumford bundle

F = sheaf(2,[5*h,10*h^2])

---- > chi(F&*o(n*h));            # computes chi of its twists
----                           4        3   125  2
----                     1/12 n  + 5/3 n  + --- n  + 125/6 n + 2
----                                         12

chi (F ** o(n*h))
assert( oo == 1/12*n^4+5/3*n^3+125/12*n^2+125/6*n+2 )

---- #-------------------------------------------------------------------------
---- # Cohomology of the universal line in P^3.  Done in two ways -  
---- # LL is the line as a section of a bundle on P3 x G(2,4), whereas Tf is 
---- # P(universal 2-bundle on G). 
---- > 
---- > proj(3,h,all):             # Ph=P^3
---- > grass(2,4,b,all):          # Gb=G(2,4)
---- > R:=4-Qb:                   # the universal subbundle on G(2,4)
---- > productvariety(PG,Ph,Gb,pp,pg): # PG=P3 x G(2,4)
---- > bundlesection(LL,dual(R)&*o(h)):# universal line
---- > lis:=NULL: for A in monomials(LL,5) do 
---- >   if integral(LL,A) <> 0 then lis:=lis,A=integral(LL,A) fi od: 
---- > lis;
----       2  3        3  2        4               2           2          2
----     b1  h  = 1, b1  h  = 2, b1  h = 2, b2 b1 h  = 1, b2 b1  h = 1, b2  h = 1
---- 
---- > 
---- > setvariety(Gb):                  # make G(2,4) currentvariety
---- > Proj(f,Qb,h,tan):          # P(universal quotient)
---- > totalspace(f,Gb,tan):
---- > lis:=NULL: for A in monomials(Tf,5) do 
---- >   if integral(Tf,A) <> 0 then lis:=lis,A=integral(Tf,A) fi od:
---- > lis;
----       2  3        3  2        4               2           2          2
----     b1  h  = 1, b1  h  = 2, b1  h = 2, b2 b1 h  = 1, b2 b1  h = 1, b2  h = 1
---- 
---- > 
---- > expand(chi(LL,o(m*h+n*b1))-chi(Tf,o(m*h+n*b1))); # chi must be the same
----                                        0
---- 
---- #-------------------------------------------------------------------------
---- # We compute the Hilbert polynomial of a space curve in three ways,
---- # using the direct image and chi on P^3, and directly on C. We quote
---- # the name 'i' of the inclusion morphism, in case i has been assigned
---- # a value earlier in the session.
---- > 
---- > proj(3,h,all):
---- > curve(C,g,p):
---- > morphism('i',C,Ph,[d*p]):
---- > lowerstar(i,1);             # class of C in H*(P^3)
----                                          2
----                                       d h
---- 
---- > lowershriek(i,o(n*d*p)):    # Direct image of o_C(n)
---- > chi(Ph,");
----                                   1 - g + n d
---- 
---- > oo:=lowershriek(i,1): setvariety(Ph): chi(oo&*o(n*h));
----                                   1 - g + n d
---- 
---- > chi(C,i&^*(o(n*h)));
----                                   1 - g + n d
---- 
---- #-------------------------------------------------------------------------
---- # Here we test the compatibility between bundlesection
---- # and koszul. Use grass(2,5,c) as the ambient space, and
---- # consider a regular section of the rank-3 bundle symm(2,Qc).
---- > 
---- > grass(2,5,c,all):
---- > bundlesection(Z,symm(2,Qc)):# Z is the zero scheme of a section of symm(2,Qc)
---- # We may compute the Hilbert polynomial of Z in two ways:
---- > setvariety(Gc): chi(o(n*c1)&*koszul(symm(2,dual(Qc))));
----                                            2        3
----                            1 + 11/3 n + 4 n  + 4/3 n
---- 
---- > setvariety(Z): chi(o(n*c1));
----                                            2        3
----                            1 + 11/3 n + 4 n  + 4/3 n
---- 
---- # The following should be zero:
---- > difference:=lowershriek(iZ,1)-koszul(dual(symm(2,(Qc))));
----  difference :=
---- 
----            5      2      6   3        6      4      6   2   2         5      3
----      32/3 t  c1 c2  - 5 t  c2  + 7/2 t  c2 c1  - 2 t  c2  c1  - 16/3 t  c2 c1
---- 
---- > 
---- # We check that actually it *is* zero modulo relations:
---- > 
---- > grobnerbasis(Gc):
---- > normalform(Gc,difference);
----                                        0
---- 
---- #-------------------------------------------------------------------------
---- # Riemann-Roch formulas.
---- # Line bundle O(D) on a threefold.
---- > 
---- > variety(X,dim=3,tan=sheaf(3,[-K,c2,c3])): # traditionally, -K is 
---- >                                           # used instead of c1
---- > chi(o(D));
----                         3          2          2
----        integral(X, 1/6 D  - 1/4 K D  + (1/12 K  + 1/12 c2) D - 1/24 K c2)
---- 
---- #-------------------------------------------------------------------------
---- # number of bitangents to a plane curve
---- > 
---- > proj(2,h,all):             # the dual projective plane
---- > proj(2,j,all):             # the projective plane
---- > bundlesection(C,o(d*j)):   # define a plane curve of degree d
---- > morphism(f,C,Ph,[(d-1)*j]):# the Gauss map to the dual plane
---- > multiplepoint(f,2)/2:      # double points are bitangents or flexes
---- >                            # correct for flexes.  Flexes can of 
---- >                            # course be calculated automatically.
---- > bitangents:=expand(integral(C,")-(3*d*(d-2)));
----                                        4    3        2
----                     bitangents := 1/2 d  - d  - 9/2 d  + 9 d
---- 
---- > subs(d=4,");
----                                        28
---- 
---- #-------------------------------------------------------------------------
---- # blowup 6 points in P2. Cubics through the 6 points give a linear
---- # system of degree 3 (generically an embedding in P3).
---- > 
---- > proj(2,h):
---- > blowuppoints(Ph,6,e):
---- > integral(Be,(3*h-e1-e2-e3-e4-e5-e6)^2);
----                                        3
---- 
---- #-------------------------------------------------------------------------
---- # betti numbers of a product of grassmannians
---- > 
---- > grass(2,5,a,bas): grass(3,7,b,bas): # make two grassmannians
---- > productvariety(W,Ga,Gb):            # their product W
---- > betti(W);                           # betti numbers of W
----      [1, 2, 5, 9, 15, 21, 29, 34, 39, 40, 39, 34, 29, 21, 15, 9, 5, 2, 1]
---- 
