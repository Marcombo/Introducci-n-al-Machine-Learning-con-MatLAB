% Generaci�n del �rbol de regresi�n con los datos de la funci�n peaks                                  
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         
% Limpiar variables 
clear all

[x1,x2,z]=peaks(50);
mesh(x1,x2,z)

X(:,1)=x1(:);
X(:,2)=x2(:);
Y=z(:);
MdlR = fitrtree(X,Y);
view(MdlR,'mode','graph')
