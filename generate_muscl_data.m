J = 512;
N = 4 * J;
T = 1.0;
dx = 1.0/J;
x = 0.0: dx: 1.0;
u0 = initialData(x);
uT = improvedEuler(J, N, T);

%plot(x, u0);
%hold on;
%plot(x, uT);
%hold off;

file1 = fopen('muscl_512_01.txt', 'w'); 
fprintf(file1, '%f \n', uT); 
