function[]=GiaoThoaSong()
    t = 0:0.001:1;
    A = 2;
    omega = 240*pi;
    lambda = 1; 
    x = A*cos(omega*t + 2/lambda);
    for j = t
        plot(j,x)
    end
end