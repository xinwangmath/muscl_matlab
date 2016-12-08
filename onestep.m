function y = onestep(x, u, dx, dt)

u1 = u + dt * netInFlux(x, u, dx); 
u2 = u1 + dt * netInFlux(x, u1, dx); 
y = (u + u2)./2; 

end