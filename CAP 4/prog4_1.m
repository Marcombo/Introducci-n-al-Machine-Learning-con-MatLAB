% Ejemplo del uso del m�todo de m�nimos cuadrados en MatLAB                                 
% Autores: Erik Cuevas, Omar Avalos, Arturo Valdivia y Primitivo D�az         

%Se limpia la memoria
clear all; close all
%Generaci�n de la variable independiente x
x = linspace(0,2,100)';
%Evaluaci�n de la funci�n real
y = 1./(1+x);
%Agregar error aleatorio a la funci�n real.
y_error = y + (0.16*rand(100,1) - 0.08);
%Se extraen 25 datos de entrenamiento.
x_training = x(1:4:100,1);
y_training = y_error(1:4:100,1);
%C�lculo de par�metros del modelo, con ecuaciones 4.6 y 4.7. 
theta_1 = cov(x_training,y_training)./var(x_training);
theta_1 = theta_1(1,2);
theta_0 = mean(y_training)-theta_1*mean(x_training);
%C�lculo del modelo de regresi�n.
y_estimada = theta_0 + theta_1.*x;
%Funci�n de costos
J = mse(y_estimada,y);
%Resultados
fprintf('Soluci�n A): \n');
fprintf('Theta 0 = %f , Theta 1 = %f \n\n',theta_0,theta_1);
%Funci�n de costos 
fprintf('Soluci�n B): \n'); 
fprintf('J= %f \n\n',J);
%Gr�fica funci�n real, funci�n de regresi�n y datos de entrenamiento 
plot(x,y,'g','LineWidth',1); hold on;
plot(x,y_estimada,'r','LineWidth',1);
scatter(x_training,y_training,'b','MarkerFaceColor','b');
legend('Modelo Real', 'Modelo Estimado','Datos de Entrenamiento')
title('Modelo de Regresion por M�nimos Cuadrados');xlabel('x'); ylabel('y');
