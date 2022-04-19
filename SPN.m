fx = @(x)sin(x);
x = pi / 3;
for i=1:6
    h = 1/10^i;
    gandung = (feval(fx, x) - feval(fx, x - h)) / h;
    fprintf('%f\n', gandung);
end