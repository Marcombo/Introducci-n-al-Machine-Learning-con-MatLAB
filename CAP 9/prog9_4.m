% Ejemplo del uso del m�todo de intervalos de confianza en la distribui�n 
% t en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az   

%Se limpia la memoria
clear all; close all

%datos
nc = 98/100;
x  = [86,69,98,56,75,72,90,91,63,77,75,84];
%estad�sticos
mu = mean(x);
s= std(x);
n = length(x);
v = n-1;
%c�lculo de t
at = 1 - ((1-nc)./2);
t = tinv(at,v);
%c�lculo de limites
Li = mu - t*(s/sqrt(n));
Lu = mu + t*(s/sqrt(n));
%Resultado num�rico
fprintf('Intervalos de confianza: \n');
variables = {'Li', 'Lu','mu','SD'};
filas = {'98%'};
T = array2table([Li, Lu, mu, s],'VariableNames',variables,'RowNames',filas);
disp(T);