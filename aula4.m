%%QUESTAO 1
%Precisamos do Ak e Bk, mas como calcular? Vejamos
%%SE FUNCAO FOR IMPAR, O Ak é ZERO, caso seja PAR, o Bk é ZERO. Ou seja, a
%%primeira coisa que devemos olhar nessas situacoes é se a funçao é impar
%%ou par. O impar tem simetria ao eixo x 

Ta=0.01;

f0=1;

B = [0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi) 0 4/(11*pi) 0 4/(13*pi) 0 4/(15*pi) 0 4/(17*pi) 0 4/(19*pi) 0 4/(21*pi) 0 4/(23*pi)];
A = zeros(size(B));

[x,t] = fourrier_sinal_resultante(Ta,f0,24,A,B);

plot(t,x);

T0= 1/f0;

%O K é o numero de harmonicas, e deve ser qualquer numero desejado
[Ak,Bk] = calculo_ak_bk(Ta, T0, x, 24)
[x,t] = fourrier_sinal_resultante(Ta,f0,24,Ak,Bk);
plot(t,x);



Ta=0.001;
f0=1
Np=4;
K=14;
N = round(Np/(f0*Ta));
t=[0:(N-1)]' * Ta;
%Pergunta 4
y=sawtooth(2*pi*f0*t+pi/2,1/2);
plot(t,y);

[Ak,Bk] = calculo_ak_bk(Ta, T0, y', K)
[x,t] = fourrier_sinal_resultante(Ta,f0,4,Ak,Bk);
plot(t,x);