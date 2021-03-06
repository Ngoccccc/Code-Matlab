function [rts,it]=bairstow(a,n,tol)
    % Bairstow's method for finding the roots of a polynomial of  %degree n.
    %
    % Example call: [rts,it]=bairstow(a,n,tol)
    % a is a row vector of REAL coefficients so that the
    % polynomial is x^n+a(1)*x^(n-1)+a(2)*x^(n-2)+...+a(n).
    % The accuracy to which the polynomial is satisfied is given by tol.
    % The output is produced as an (n x 2) matrix rts.
    % Cols 1 & 2 of rts contain the real & imag part of root respectively.
    % The number of iterations taken is given by it.
    %
    it=1;
    while n>2
      %Initialise for this loop
      u=1; v=1; st=1;
      while st>tol
        b(1)=a(1)-u; b(2)=a(2)-b(1)*u-v;
        for k=3:n
          b(k)=a(k)-b(k-1)*u-b(k-2)*v;
        end;
        c(1)=b(1)-u; c(2)=b(2)-c(1)*u-v;
        for k=3:n-1
          c(k)=b(k)-c(k-1)*u-c(k-2)*v;
        end;
        %calculate change in u and v
        c1=c(n-1); b1=b(n); cb=c(n-1)*b(n-1);
        c2=c(n-2)*c(n-2); bc=b(n-1)*c(n-2);
        if n>3, c1=c1*c(n-3); b1=b1*c(n-3); end;
        dn=c1-c2;
        du=(b1-bc)/dn; dv=(cb-c(n-2)*b(n))/dn;
        u=u+du; v=v+dv;
        st=norm([du dv]); it=it+1;
      end;
      [r1,r2,im1,im2]=solveq(u,v,n,a);
      rts(n,1:2)=[r1 im1]; rts(n-1,1:2)=[r2 im2];
      n=n-2;
      a(1:n)=b(1:n);
    end;
    %Solve last quadratic or linear equation
    u=a(1); v=a(2);
    [r1,r2,im1,im2]=solveq(u,v,n,a);
    rts(n,1:2)=[r1 im1];
    if n==2
      rts(n-1,1:2)=[r2 im2];
    end;
    function [r1,r2,im1,im2]=solveq(u,v,n,a);
    % Solves x^2 + ux + v = 0 (n  1) or x + a(1) = 0 (n = 1).
    %
    % Example call: [r1,r2,im1,im2]=solveq(u,v,n,a)
    % r1, r2 are real parts of the roots,
    % im1, im2 are the imaginary parts of the roots.
    % Called by function bairstow.
    %
    if n==1
      r1=-a(1);im1=0; r2=0; im2=0;
    else
      d=u*u-4*v;
      if d<0
        d=-d;
        im1=sqrt(d)/2; r1=-u/2; r2=r1; im2=-im1;
      elseif d>0
        r1=(-u+sqrt(d))/2; im1=0; r2=(-u-sqrt(d))/2; im2=0;
      else
        r1=-u/2; im1=0; r2=-u/2; im2=0;
      end;
    end;