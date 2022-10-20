function [Ak,Bk] = calculo_ak_bk(Ta, T0, x, K) %O K significa Um numero arbitrario de Ks
    f0 = 1/T0;
    
    N = length(x);
    
    t = [0 : (N-1)]' * Ta; %nao queremos a ultima amostra para nao ter incompatibilidade
    size(t)
    size(x)
    Ak= zeros(K+1,1);
    Bk= zeros(K+1,1);
    Ak(1) = mean(x);
    Bk(1)=0;
    
    for k=2:K+1
        Ak(k) = (2/N) * x * cos(2*pi*(k-1)*f0*t);
        Bk(k) = (2/N) * x * sin(2*pi*(k-1)*f0*t);
    end