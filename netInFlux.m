function y = netInFlux(x, u, dx)

y = zeros(size(u)); 
uTildePlus = y; 
uTildeMinus = y; 

J = length(u)-1; 
alpha = alphaBuilder(u); 

% first build the uTildePlus(j) = u_{ (j+1/2)- } and uTildeMinus(j) = u_{
% (j-1/2) + }, also note u_{ (j+1) - 1/2 - } = u_{ (j+1/2)+ } 
for i = 2:J; 
    uTildePlus(i) = uMuscl(x(i)+ dx/2, x(i), u(i-1), u(i), u(i+1), dx); 
    uTildeMinus(i) = uMuscl(x(i) - dx/2, x(i), u(i-1), u(i), u(i+1), dx); 
end; 

uTildePlus(1) = uMuscl(x(1) + dx/2, x(1), u(J), u(1), u(2), dx); 
uTildeMinus(1) = uMuscl(x(1) - dx/2, x(1), u(J), u(1), u(2), dx); 

uTildePlus(J+1) = uTildePlus(1); 
uTildeMinus(J+1) = uTildeMinus(1); 

% calculate the netInFlux at j

for j = 2:J; 
    y(j) = -(1/dx) * ( fluxLF(uTildePlus(j), uTildeMinus(j+1), alpha)...
    - fluxLF(uTildePlus(j-1), uTildeMinus(j), alpha) ); 
end; 

y(1) = -(1/dx) * ( fluxLF( uTildePlus(1), uTildeMinus(2), alpha ) ...
    - fluxLF( uTildePlus(J), uTildeMinus(1), alpha ) ); 

y(J+1) = y(1); 


end
