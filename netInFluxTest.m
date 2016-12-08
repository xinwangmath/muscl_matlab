% netInFluxTest

x = 0:0.2:1; 
u = [0 0.2 0.4 0.4 0.2 0];
dx = x(2) - x(1); 

netInFlux(x, u, dx)