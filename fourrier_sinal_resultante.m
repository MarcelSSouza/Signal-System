function [x,t] = fourrier_sinal_resultante(Ta,f0,N,Ak,Bk)

%     - 𝑇𝑎: Período de amostragem, em segundos; 
%     - 𝑓0: Frequência do sinal composto, em Hz; 
%     - 𝑁𝑝: Número de períodos a gerar;
%     - 𝑎𝑘: Vetor (𝐾x1) com os valores de 𝑎𝑘 da série; 
%     - 𝑏𝑘: Vetor (𝐾x1) com os valores de 𝑏𝑘 da série.
%     -  N  N é sempre (T/Ta)*Np
T = 1/f0; 

t = [0:Ta:(N*T)-Ta];

K = length(Ak);

x = zeros(size(t));

for K=1:K
    x = x + Ak(K)*cos((K-1)*2*pi*f0*t) + Bk(K)*sin((K-1)*2*pi*f0*t);
end

end
