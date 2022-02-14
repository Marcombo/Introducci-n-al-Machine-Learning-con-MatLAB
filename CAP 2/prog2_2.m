% Ejemplo del c�lculo de medidas de variabiliad en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         
% Limpiar variables
clear all;
% se cargan los datos 
X = [70,50,40,70,80,70,60,90,70,70,100,80,60,70,80,60];

% C�lculos de medidas de variabilidad
sigma = var(X);
s = std(X);
R = range(X);

%Resultados
fprintf('Medidas de variabilidad: \n');
fprintf('Varianza: %f \nDesviaci�n Estandar: %f \nRango: %f \n\n',sigma,s,R);
