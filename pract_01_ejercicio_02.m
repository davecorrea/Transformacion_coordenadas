clear all, close all 
% z = x + i*y
x=[0:0.02:1]; % particion del lado horizontal
y=[0:0.02:1]; % particion del lado vertical

[X,Y]=meshgrid(x,y); % puntos del mallado

subplot(1,2,1), 
plot(X,Y,'b')
hold on
plot(X',Y','r')
xlabel('Eje X')
ylabel('Eje Y')
axis([-1.5 1.5 -0.5 2.5])
grid on
box on

% U = X.^2 - Y.^2;
% V = 2*X.*Y;



U = 2 *X-1;
V = 2*Y;

subplot(1,2,2), 
plot(U,V,'b')
hold on
plot(U',V','r')
xlabel('Eje U')
ylabel('Eje V')
axis([-1.5 1.5 -0.5 2.5])
grid on
box on
