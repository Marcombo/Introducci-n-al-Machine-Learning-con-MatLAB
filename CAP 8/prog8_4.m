%Programa que permite calcular la correlaci�n global
% entre I(x,y) y R(i,j)
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
I1=imread('patronG.jpg');
Im=rgb2gray(I1);
I2=imread('patronS.jpg');
T=rgb2gray(I2);
%Se Obtiene la dimensi�n de la imagen
[m n]=size(Im);
%Se convierte a double para evitar problemas num�ricos
Imd=double(Im);
Td=double(T);
%Se obtiene el tama�o de la imagen de referencia
[mt nt]=size(T);
%Se inicializa la variable a cero
suma=0;
%Se calcula la correlaci�n entre la imagen I(x,y) y
%R(i,j) seg�n la ecuaci�n 8.6
for re=1:m-mt
    for co=1:n-nt
        indice=0;
        for re1=0:mt-1
            for co1=0:nt-1
               suma=Imd(re+re1,co+co1)*Td(re1+1,co1+1)+suma;
            end
        end
        de(re,co)=suma;
        suma=0;
        
    end
end
%Se transforma linealmente el contenido de a [0,1]
C=mat2gray(de);
imshow(C)
