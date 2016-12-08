% improvedEuler Test

J = 200; 
N = 400; 
T = 1.0; 

dx = 1.0/J; 
x = 0.0: dx: 1.0; 

u0 = initialData(x); 

uT = improvedEuler(J, N, T); 

figure(1); 
plot(x, u0); 
hold on; 
plot(x, uT, 'r--'); 
hold off; 
