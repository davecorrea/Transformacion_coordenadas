clear all, close all 
% z = x + i*y
x=[1:0.01:2]; % particion del lado horizontal
y=[0:0.01:1]; % particion del lado vertical

[X,Y]=meshgrid(x,y); % puntos del mallado

subplot(1,2,1), 
plot(X,Y,'b')
hold on
plot(X',Y','r')
xlabel('Eje X')
ylabel('Eje Y')
% axis([-1 1 0 2])
grid on
box on

% Centro y radio
xc=0.5;
yc=0.5; 

fi=linspace(pi,2*pi,size(X,2));
FI = repmat(fi,size(X,1),1);

% UX = X.*cos(FI)/2; 
% V = Y.*sin(FI)/2;

U = 0.5 + 0.5*Y.*cos(FI);
V =  0.5*Y.*sin(FI);

subplot(1,2,2), 
plot(U,V,'b')
hold on
plot(U',V','r')
xlabel('Eje U')
ylabel('Eje V')
% axis([-1 1 0 2])
grid on
box on

