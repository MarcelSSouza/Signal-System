function potencia(x,Ta,T)
% Pot(vetor de amostras de um sinal,o período de amostragem, periodo)
    x2 = x.^2;
    area = x2.* Ta; % cada quadradinho
    int = sum(area);
    potencia = int/T
end
