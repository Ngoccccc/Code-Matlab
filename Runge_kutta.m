f = @(y,t)-20*y + 7*exp(0.5*t);
y0 = 5;
t0 = 0; t1 = 0.5;
h = 0.01;
%chinh xac
y_chinhxac = @(t)5*exp(-20*t)+(7/19.5)*(exp(-0.5*t)-exp(-20*t));
X = t0:h:t1;
Y_cx = feval(y_chinhxac,X);
plot(X,Y_cx); hold on;
%Euler thu?n
for t=t0:h:t1
    Y = y0 + h*feval(f,y0,t);
    plot(t,Y,'r*'); hold on;
    y0 = Y;
end

y0 = 5;

%runge kutta b?c 2
for t=t0:h:t1
    k1 = h*feval(f,y0,t);
    k2 = h*feval(f,y0+k1,t+h);
    Y = y0 +0.5*(k1 + k2);
    plot(t,y0,'bo'); hold on;
    y0 = Y;
end

y0 = 5;
%runge kutta b?c 3
for t=t0:h:t1
    k1 = h*feval(f,y0,t);
    k2 = h*feval(f,y0 +1/2*k1,t+1/2*h);
    k3 = h*feval(f,y0 -k1+2*k2,t+h);
    Y = y0 +1/6*(k1 +4*k2+k3);
    plot(t,y0,'y+'); hold on;
    y0=Y;
end

%runge kutta b?c 4
y0=5;
for t=t0:h:t1
    k1 = h*feval(f,y0,t);
    k2 = h*feval(f,y0+1/2*k1,t+1/2*h);
    k3 = h*feval(f,y0 +1/2*k2,t+1/2*h);
    k4 = h*feval(f,y0 +k3,t+h);
    Y = y0 + 1/6*(k1+2*k2+2*k3+k4);
    plot(t,y0,'c*'); hold on;
    y0=Y;
   
end


