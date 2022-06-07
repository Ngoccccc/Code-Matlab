function [] = BaiTap276(xreal,f)
    x = sin(xreal);
    N=length(x);
    SumX2 = sum(x.*x); SumX = sum(x);
    SumFX =sum(f.*x); SumF = sum(f);
    A = [SumX2 SumX; SumX N];
    b = [SumFX ; SumF];
    format rat, Result = inv(A)*b
end