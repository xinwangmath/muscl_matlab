% u_muscl test function 
dx = 0.25; 

xj = 0.5; 
x = -dx/2 + 0.5; 

uj = 0.5; 
ujm = 0.25; 
ujp = 0.8; 

uMuscl(x, xj, ujm, uj, ujp, dx)

