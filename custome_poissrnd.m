function [n] = custome_poissrnd(lambda)
if lambda==0
    n=0;
    return
end
c = 0.767 - 3.36/lambda;
beta = pi/sqrt(3*lambda);
alpha = beta*lambda;
k = log(c) - lambda - log(beta);

while(1)
    u = rand();
    x = (alpha - log((1.0 - u)/u))/beta;
    n = floor(x + 0.5);
    if (n < 0)
        continue
    end
    v = rand();
    y = alpha - beta*x;
    lhs = y + log(v/(1.0 + exp(y))^2);
    rhs = k + n*log(lambda) - gammaln(n+1);
    if (lhs <= rhs)
        return
    end
end
end