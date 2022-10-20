%% Aula 2
%As variaveis de uma funcao so podem ser acessadas fora da funcao se forem
%RETORNADAS pela funcao

%Uma funcao deve ser sempre guardada SOZINHA em um ficheiro de mesmo nome,
%ou seja, se eu quiser a funcao calcula(), preciso criar o calcula.m e
%deixar la apenas a funcao. Temos como exemplo a funcao f3
[x,z] = f3(2,3);


%%
u = linspace(0,2*pi,100);
resultado=sin(u);
plot(u, resultado)

resultado1 = serieTaylor(5 , u);
plot(u, resultado1)

resultado2 = serieTaylor(10 , u);
plot(u, resultado2)

plot(u, resultado, "r", u , resultado1, "b", u,resultado2,"k")




%%Guiao 2
%a
t = 0:0.01:5;
x= 2*sin(4*pi.*t);
plot(t,x);

%b
y= cos(10*pi*t);
plot(t,y);

%c
z= x.*y;
plot(t,z);

%d
t = 0:0.01:10;
w=3*sin(pi*t) + 2*sin(6*pi*t);
plot(t,w);

%e
t = 0:0.01:5;
%t1=0:0.1:5;
q= 2*sin(2*pi*(2*t+t));
plot(t,q)
%plot(t1,q)


%2 - Percebemos que alguns dos graficos nao ficam perfeito. Apresentam
%linhas retas o que nos aponta uma falta de amostragem

%3
t = 0:0.01:10;
w=3*sin(pi*t) + 2*sin(6*pi*t);
x= 2*sin(4*pi.*t);
y= cos(10*pi*t);
z= x.*y;
plot(t,x, "r", 'LineWidth',0.5)
hold on 
plot(t,y, "--b", 'LineWidth',3)
plot(t,z,"g", 'LineWidth',0.5)
plot(t,w,"y", 'LineWidth',3, 'MarkerIndices', 1:10,'MarkerFaceColor','red')
hold off
legend("x", "y", "z", "w")
%Ex 5.
Ta = 1/25;
t = [0:Ta:5]';
x1 = [-5:Ta:5]';
x2 = [-5:Ta:5]';
N = length(t);
N1 = length(x1);
r = zeros(N1,N1);
for n=1:N;
  for i=1:N1
    r(i,:) = 2*sin(2*pi*sqrt(x1(i)^2+x2.^2)-2*pi*t(n));
  end
  mesh(x1,x2,r);
  drawnow();
end
