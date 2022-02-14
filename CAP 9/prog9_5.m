% Ejemplo del uso del m�todo de prueba de hip�tesis en distribuci�n 
% normal en MatLAB                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az   

%Se limpia la memoria
clear all; close all

%datos del problema
mu = 4;
x = 5.5;
s = 3;
n = 45;
alfa = 0.05;
%nivel cr�tico usando distribuci�n normal
nivelC = norminv(0.95);
%c�lculo de z
z = (x-mu)/(s/sqrt(n));
%c�lculo de p prueba de una cola
P = 1 - normcdf(z);
%Resultados
variables = {'Z', 'NivelCritico','ValorP','NivelConfianza'};
T = array2table([z,nivelC,P,alfa],'VariableNames',variables);
display(T);
