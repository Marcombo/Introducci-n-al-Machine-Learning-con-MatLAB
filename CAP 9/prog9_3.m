% Ejemplo del uso del m�todo de intervalos de confianza en la distribui�n 
% normal en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az   

%Se limpia la memoria
clear all; close all;

%datos del problema
nc = [90 95 99]./100; %vector de los 3 niveles de confianza
n=45;
mu = 178;
s = 16;
%c�lculo de z
az = 1 - ((1-nc)./2); %el operador ./ divide cada elemento del vector
z = norminv(az);
%c�lculo de limites
Li = mu - z.*(16/sqrt(n));
Lu = mu + z.*(16/sqrt(n));

%Resultado num�rico
fprintf('Intervalos de confianza: \n');
variables = {'Li', 'Lu'};
filas = {'90%','95%','99%'};
T = array2table([Li',Lu'],'VariableNames',variables,'RowNames',filas);
disp(T);