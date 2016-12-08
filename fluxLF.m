function y = fluxLF(a, b, alpha)
y = ( flux(a) + flux(b))/2 + alpha/2 * (a - b) ;
end