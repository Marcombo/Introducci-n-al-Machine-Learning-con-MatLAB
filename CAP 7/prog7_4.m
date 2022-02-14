% Estimaci�n del error de la curtosis de acuerdo al m�todo Bootstrap                                   
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         
% Limpiar variables 
clear all
% Se carga el conjunto de datos original
load forearm
% Se obtiene el n�mero de datos contenidos
n = length(forearm);
% Se establece el n�mero de r�plicas del m�todo
B = 100;
% Se calcula la curtosis del conjunto original de datos.
theta = skewness(forearm);
% Se usa unidrnd para obtener los �ndices de los nuevos B conjuntos.
% Cada columna corresponde a uno de los B conjunto de datos
inds = unidrnd(n,n,B);
% De los �ndices producidos por unidrnd se obtienen los conjuntos.
xboot = forearm(inds);
% Se calcula la curtosis para cada columna
thetab = skewness(xboot);
% Se obtiene el error de la estimaci�n
seb = std(thetab);
% Se obtiene el histograma para los valores de la curtosis
histogram(thetab,14)
