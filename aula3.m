Ta=0.01;  %o passo normalmente é Ta/numero de pontos suficientes. Normalente 0.01
t = 0:Ta:5;
%a
x = 2*sin(4*pi*t);
figure(1);
plot(t,x)
potencia(x,Ta,1/2)
%b
y = sin((10*pi*t)+pi/2);
figure(2);
plot(t,y)
potencia(y,Ta,1/5)
%c
z=sin(6*pi*t) + sin(8*pi*t);
figure(3);
plot(t,z)
potencia(z,Ta,0.5)
%d frquencia sera o MDC entre as frequencias e perceba que a FASE
%influencia na potencia
w=sin(6*pi*t)+sin((8*pi*t)+0.1);
figure(4);
plot(t,w)
potencia(w,Ta,0.5)
%e
q=sin(6*pi*t)+sin(7*pi*t)+sin(8*pi*t);
figure(5);
plot(t,q)
potencia(q,Ta,1)


%%Questao4

f2=1.2*2500;
f1=1.1*f2;
f = [f1 f2 2500]; %VETOR LINHA F COM A FREQUENCIA DE CADA UM DOS SINAIS
A= [1 1 1]; %VETOR LINHA DE AMPLITUDE PARA CADA UM DOS SINAIS
ta=1/1e4; %PASSO UTILIZADO
t = 0:ta:1-ta; % VETOR DO TEMPO QUE UTILIZAREMOS. NESTE CASO, USAMOS SEMPRE 1-TA AO FIM DO VETOR, POIS O ULTIMO PASSO JÁ SERÁ CONTABILIZADO COMO UMA REPETIÇÃO DO SINAL, ASSIM EVITANDO, SER REDUNDANTE
phi = randn(1,3) * pi; % O VALOR DE PHI NESTE CASO É SEMPRE ALEATÓRIO, quando o enunciado não nos dá uma especificação dos phi que devemos usar. LEMBRANDO QUE COMO É UMA FASE, DEVEMOS MULTIPLICAR POR PI
x=zeros(1,length(t)); %VETOR LINHA INICIALIZADO
for i=1 : length(A)
        x = x + A(i) .* sin ((2*pi*f(i)*t) + phi(i)); %somamos todos os elementos de x, não um elemento x(i). Atenção a isto. X vetor, sera a soma de todos os valores de x vetor * novas informações
end
figure(6);
plot (t(1:1e3),x(1:1e3));
title("Gráfico x(t)")
x1=A(1) .* sin ((2*pi*f(1)*t) + phi(1));
x2=A(2) .* sin ((2*pi*f(2)*t) + phi(2));
x3=A(3) .* sin ((2*pi*f(3)*t) + phi(3));
figure(7);
plot (t(1:1e3),x1(1:1e3));
figure(8);
plot (t(1:1e3),x2(1:1e3));
figure(9);
plot (t(1:1e3),x3(1:1e3));

potencia(x,ta,1/100)

potencia(x1,ta,1/f1)

potencia(x2,ta,1/f2)

potencia(x3,ta,1/2500)