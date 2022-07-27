function [] = Cuctieu()
    a=2;
    b=4;
    e = 0.01;
    f = @(x)exp(x)+exp(-x)- 3*x*x + x;
    k = 0;
    while abs(b-a) > 2*e
        x1 =  a + (b-a)/2 - e/2;
        x2 =  a + (b-a)/2 + e/2;
        k = k + 1;
        fx1 = feval(f,x1);
        fx2 = feval(f,x2);
        
        if fx1 < fx2
            b = x2;
        elseif fx1 > fx2
            a = x1;
        else a=x1; b=x2;
        end
    end
        tb = (a+b)/2
        feval(f,tb)
        
    

end