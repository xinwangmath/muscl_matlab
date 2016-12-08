function y = alphaBuilder(u)
max = 0.0; 
for i = 1:length(u); 
    if(u(i) > max); 
        max = u(i); 
    end; 
end; 

y = max; 
    
end