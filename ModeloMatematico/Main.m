clc
clear all

fprintf(2,'                 Estimación de barriles de petroleo: \n \n')

fprintf('A continuación se verán los pasos realizar\n\n')

disp('1.....ingresar matriz de la produccion de combustible')
disp('2.....ingresar la Matriz de la demanda')
disp('3.....solución de la primera pregunta del modelo')
disp('4.....solución de la segunda pregunta del modelo')
fprintf('5.....salir \n \n \n')

h=1;
fprintf('Presione cualquier tecla para continuar... \n\n\n  ')
pause; 

switch h
    
    case 1
        
        
        %Acá se define la primera matriz
        
        fprintf(2,'        ingrese La matriz de la producción de combustible \n\n\n\n')
        pause(1);
        m=input('ingrese el numero de filas:  ');
        n=input('ingrese el numero de columnas:  ');
        
        for i=1:m
            for j=1:n
                fprintf(['ingrese el elemento(',num2str(i),',',num2str(j),'):  '])
                
                A(i,j)=input(' ');
            end
        end
        pause(1);
        fprintf('la matriz de producción es: \n')
        
        A
        
        pause(1);
        
        
        %A continuación se define la segunda matriz
        
         
         fprintf(2,'\n\n\n\n     Ahora ingrese La matriz de la demanda \n\n\n\n')
         pause(1);
        
        l=input('ingrese el numero de filas:  ');
        
        p=input('ingrese el numero de columnas:  ');
        
        for i=1:l
            for j=1:p
                fprintf(['ingrese el elemento(',num2str(i),',',num2str(j),'):   '])
                
                B(i,j)=input('');
            end
        end
        
        
        fprintf('la matriz de la demanda es \n')
        
        B
        
        pause(1);
        
        %Ahora se unen las matrices formando la matriz ampliada de A y B
        
        fprintf(2,'\n\n\n\n Ahora se va a crear la matriz ampliada entre la producción y la demanda \n\n\n')
        
        pause(1);
        format long
        F=[A B]
        
        pause(1);
        
        
        
        
        %Se realiza Gauss jordan con la funcion rref
        
        
        fprintf(2,'Realizando el proceso de gauss Jordan se encuentran los resultados de X1, X2 y X3')
        
        
        
        pause(1);
        
        T=rref(F)
       
        pause(1);
        
        M=reshape (T,[1 4])
        
        
      %siguiente paso: Solucion a la segunda pregunta del modelo
      
      
        fprintf(2, '\n\n\n       Ahora se realiza la solución de la segunda pregunta que resuelve el modelo\n\n\n')
        
        pause(1);
        
        fprintf('Para la refinería C.IB: \n')
        
        P1=A(1,1)*T(1,4)*(-1)
        P2=A(2,1)*T(1,4)*(-1)
        P3=A(3,1)*T(1,4)*(-1)
        
        
        Q1=A(1,2)*T(2,4)*(-1)
        Q2=A(2,2)*T(2,4)*(-1)
        Q3=A(3,2)*T(2,4)*(-1)
        
        
        R1=A(1,3)*T(3,4)
        R2=A(2,3)*T(3,4)
        R3=A(3,3)*T(3,4)
        pause(1);
        
        fprintf('\n \n la Refinería C.I.B debería producir: \n')
       
        
        fprintf('\n litros de Gasolina Corriente')
        P1
        
        fprintf('\n litros de Gasolina Extra y ')
        P2
        
        fprintf( ' litros de Diesel.')
        P3
        
        
    otherwise
        
        disp('')
                
        
end







