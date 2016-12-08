function y = improvedEuler(J, N, T)

dx = 1.0/J; 
dt = T/N; 

x = 0:dx:1.0; 

% initialization 
u = initialData(x); 

for k = 1:N; 
    u = onestep(x, u, dx, dt); 
end; 

y = u; 
end