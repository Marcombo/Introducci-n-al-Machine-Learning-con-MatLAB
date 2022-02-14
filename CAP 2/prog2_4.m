% Ejemplo del uso del m�todo de gr�fico de cajas en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         

%Se limpia la memoria
clear all; close all     

%Cargan los datos
load iris.dat
etiquetas = {'Largo S�palo','Ancho S�palo','Largo P�talo','Ancho P�talo'};
%Gr�fico de caja
boxplot(iris(:,1:4),etiquetas);
%valores num�ricos para los boxplot
D = zeros(4,8);
for i=1:4
    datos = iris(:,i);
    Y = quantile(datos,[0.25 0.75]); %Q1 y Q3
    D(i,2)= Y(1); D(i,4)=Y(2);%Q1 y Q3
    D(i,3) = median(datos); %Mediana
    D(i,6) = D(i,4) - D(i,2); % IQR
    D(i,1) = D(i,2) - D(i,6)*1.5; %m�nimo
    D(i,5) = D(i,4) + D(i,6)*1.5; %m�ximo
    D(i,7) = min(datos);%Dato m�nimo
    D(i,8) = max(datos); %Dato m�ximo
end

%Resultados
fprintf("C�lculos num�ricos: \n\n");
calculos = {'Minimo','Q1','Media','Q3','Maximo','IQR','Min','Max'};
T = array2table(D,'VariableNames',calculos,'RowNames',etiquetas);
disp(T)