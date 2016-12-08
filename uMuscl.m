function y = uMuscl(x, xj, ujm, uj, ujp, dx)
% use slope limiter to reconstruct the solution
a = (ujp - uj)/dx; 
b = (uj - ujm)/dx;
if( (a>0) && (b>0))
    sj = min(a, b); 
else if( (a<0) && (b<0))
        sj = max(a, b); 
    else
        sj = 0; 
    end; 
end; 
y = uj +  sj * (x - xj); 
end