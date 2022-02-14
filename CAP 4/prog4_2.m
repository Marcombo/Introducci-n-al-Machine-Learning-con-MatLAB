% Ejemplo del uso del m�todo de gradiente descendente en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         

% Limpiar variables
clear all;

%Se asignan las variables
x = boston(1:100,13); %variable de entrada 
y = boston(1:100,14); %variable de salida
N = size(y,1); % N�mero de datos
X = [ones(N,1) x]; % Se agrega la variable artificial x0 = 1
%Inicializaci�n de par�metros.
w = [0;0]; alfa = 0.01; maxIter = 2000; k=1;
w_num = size(w,1); %N�mero de par�metros de estimaci�n
%Se define condici�n de paro y se inicia las iteraciones.
while k<= maxIter
%Se calculan los par�metros w con ecuaci�n 4.9
for j=1:w_num
temp(j,1)=w(j)-(alfa/N)* sum((X*w - y).*X(:,j));
end 
%Se actualiza el valor de los par�metros w
w = temp;
%Se calcula la funci�n de costos J con ecuaci�n 4.3
J(k,1)= mse(X*w,y);
k = k + 1;
end %finaliza iteraci�n
%Estimaci�n para 10% de la poblaci�n en condici�n de pobreza
y_10=w(1)+w(2)*10;
%Resultados
%Par�metros Estimados
fprintf('Soluci�n A): \n')
fprintf('w0 = %f , w1 = %f \n\n',w(1),w(2));
%Funci�n de costos 
fprintf('Soluci�n B): \n')
fprintf('J= %f \n\n',J(maxIter));
%Gr�fica del modelo regresi�n
y_reg = w(1) + w(2)*(min(x):1:max(x)); 
plot((min(x):1:max(x)),y_reg,'r','LineWidth',1); hold on;
scatter(x,y,12,'o','b','MarkerFaceColor','b');
scatter(10,y_10,'*','k');
legend('Modelo Estimado','Datos de Entrenamiento', 'Location', 'northwest');
title('Modelo de Regresi�n');xlabel('x = % condici�n de pobreza'); ylabel('y = Precio');
hold off;
%Se grafica la evoluci�n de la funci�n de costos
figure; plot(1:1:maxIter,J,'r','LineWidth',1);
legend(num2str(alfa))
title('Convergencia J');xlabel('Iteraciones');ylabel('J');
