function [resultado] = serieTaylor(N,vector)
resultado=0;
for n=1:N
resultado = resultado + ((vector.^n) ./ factorial(n)) * sin((n * pi)/2);
end
end


