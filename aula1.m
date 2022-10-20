%%Exercicio 1%%
1:2:10;
-5:5;
linspace(-5,5,11);
matrizA=[[1,5,1-j];[4,j,-1]];
matrizA(end+1,:) = [1,2,4];
matrizA(:, end+1) = [4,2,1];
matrizB = matrizA(:, 2:2:end);





x=linspace(-2*pi,0,200);
Y= sin(x).*exp(1).^x;


plot(x,Y,"LineStyle",":","Color","r")
title("Grafico do Seno");
xlabel("X")
ylabel("Y")
axis([-8 0 -0.5 0.8])

%% Aula 2
% meshgrid(x,y) auxilia a criar matrizes de tamanho igual 
%Podemos usar a funcao mesh() ou surf() para fazer gradicos em 3d

%Podemos usar contour(x,y,f) ou pcolor() para termos um grafico isolinhas (visto de
%cima, um corte do surf)

x= linspace(-1,1,51);
y= linspace(-1,1,51);
[xx,yy] = meshgrid(x,y);
f= cos(4 * pi .* (xx+yy)) .* exp(-abs(xx+yy));
surf(x,y,f);
shadding interp;

%O shadding interp serve para adicionar sombras entre as linhas

