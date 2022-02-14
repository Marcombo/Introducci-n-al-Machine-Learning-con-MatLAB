% Ejemplo del uso del m�todo de ecuaci�n normal m�ltiple en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az   

%Se limpia la memoria
clear all; close all;
%Se cargan los datos
load boston
%Se asignan las variables
x = [boston(1:100,13), boston(1:100,10)]; %variable de entrada 
y = boston(1:100,14); %variable de salida
N = size(y,1); % N�mero de datos
X = [ones(N,1) x x(:,1).^2 x(:,2).^2 x(:,1).*x(:,2)]; % Se agrega la variable artificial x0 = 1
%Soluci�n
[w,wint,r,rint,estadisticos]=regress(y,X);
J = mse(X*w,y);
R2 = estadisticos(1);
y_est = [1 10 300 100 90000 3000]*w;
%Resultados
%Par�metros Estimados
fprintf('Soluci�n A): \n')
fprintf('Vector W: \n\t%f\n\t%f\n\t%f\n\t%f\n\t%f\n\t%f\n\n',w);
%Funci�n de costos 
fprintf('Soluci�n B): \n')
fprintf('J= %f \n\n',J);
%Coeficiente de determinaci�n
fprintf('Soluci�n C): \n')
fprintf('R2= %f \n\n',R2);
%Predicci�n 
fprintf('Soluci�n D): \n')
fprintf('y_estimaci�n= %f \n\n',y_est);
%Gr�fica 
x1 = X(:,2);
x2 = X(:,3);
scatter3(x1,x2,y,'filled')
x1G = linspace(min(x1),max(x1),30);
x2G = linspace(min(x2),max(x2),30);
[x1GM,x2GM] = meshgrid(x1G,x2G);
y_solucion = w(1) + w(2)*x1GM + w(3)*x2GM + w(4)*x1GM.^2 + w(5)*x2GM.^2 + w(6)*x1GM.*x2GM;
hold on
mesh(x1GM,x2GM,y_solucion)
