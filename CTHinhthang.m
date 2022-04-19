fx=@(x)x^2+x+1;
FX=@(X)X^3/3+X^2/2+X;
a=1;b=2;
fa=feval(fx,a);
fb=feval(fx,b);
Ictht =(fa+fb)*(b-a)/2
Icx = feval(FX, b) - feval(FX, a)
