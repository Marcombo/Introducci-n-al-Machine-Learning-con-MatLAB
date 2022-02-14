% Ejemplo del uso del m�todo de c�lculo del histograma en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         

%Se limpia la memoria
clear all; close all         

%Cargar los datos Iris
load iris.dat
%Histograma del ancho del Sepalo 
h = histogram(iris(:,2));
%N�mero de Intervalos
fprintf('N�mero de Intervalos: %i \n',h.NumBins);
%Media
fprintf('Media: %.2f \n',mean(iris(:,2)));