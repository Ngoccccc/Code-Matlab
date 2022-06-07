function [] = HoiQuyBac2 (x, f)

    s0 = length(x);
    s1 = sum(x);
    s2 = sum(x.^2);
    s3 = sum(x.^3);
    s4 = sum(x.^4);
    fx = sum(f);
    fx1 = sum(x.*f);
    fx2 = sum(x.^2.*f);
    A = [s4 s3 s2;s3 s2 s1;s2 s1 s0];
    B = [fx2;fx1;fx];
    Result = inv(A) * B
    
    plot (x, f, 'r*'); hold on;
    X = 0:0.1:10;
    F = @(x)Result(3)*X.^2 + Result(2)*X + Result(1);
    FX = feval (F, X);
    plot ( X, FX, 'b-');    
    
end