function y = uMuscl(x, xj, ujm, uj, ujp, dx)
sj = min( (ujp - uj)/dx, (uj - ujm)/dx ); 
y = uj +  sj * (x - xj); 
end