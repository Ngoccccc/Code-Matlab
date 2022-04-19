fx = @(x)sin(x);
x = pi / 3;
for i=1:6
    h = 1/10^i;
    gandung = (feval(fx, x + h) - feval(fx, x - h)) / (2 * h);
    fprintf('%f\n', gandung);
end