fx = @(x)sin(x);
ham = sin(x);
for i=1:3
    h = 1/10^i;
    fprintf('Voi h = %f\n', h);
    for x=pi/2:pi/6:pi
        gandung = (feval(fx, x + h) - feval(fx, x - h)) / (2 * h);
        fprintf('%f\t', gandung); 
    end
    
    fprintf('\n');
end
