f = @(y,t)-y + t +1;
y0 = 1;
t0 = 0; t1 = 1;
h = 0.001;
%chinh xac
y_chinhxac = @(t)t + exp(-t);
X = t0:h:t1;
Y_cx = feval(y_chinhxac,X);
plot(X,Y_cx); hold on;

for t=t0:h:t1
    Y = y0 + h*feval(f,y0,t);
    plot(t,Y,'mo');
    y0 = Y;
end