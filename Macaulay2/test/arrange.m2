makering = n -> ZZ/101[x_0 .. x_(n-1), 
     Degrees => table(n,n,(i,j)->if i==j or j==0 then 1 else 0)
     ]
R = makering 6
I = ideal( x_0*x_1*x_2, x_1*x_2*x_3, x_2*x_3*x_4, x_3*x_4*x_5, x_4*x_5*x_0 )
S = R/I
k = coker vars S
m = product(numgens R, i -> R_i)
Tor_2(k,k)				  -- this used to crash
-- Local Variables:
-- compile-command: "make arrange.okay"
-- End:
