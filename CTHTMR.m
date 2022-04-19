function [ ] =CTHTMR(fx, a, b, n)
    Fx = @(x)x^3/3+x^2/2+x;
    fa = feval(fx,a);
    fb = feval(fx,b);
    Ictht = (fa + fb)*(b-a)/2;
    Icx = feval(Fx,b)-feval(Fx,a)
    Sum = 0; h = (b-a)/n;
    for i=1:n-1
        Sum = Sum + feval(fx, a + i * h);
    end
    Ihtar = (fa + fb + 2 * Sum)*h/2
end

