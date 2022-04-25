fx = @(x)x^2 + sin(x) + 1;
X = pi/3;

Ketqua1 = fx(X);
Ax = 0:pi/4:pi/2;
Tinhgandung = 0;
for i=0:2
    tich = 1;
    for j=0:2
        if i~=j
            tich = tich*(X-Ax(j+1))/(Ax(i+1)-Ax(j+1));
        end
    end
    tich = tich*fx(Ax(i+1));
    Tinhgandung = Tinhgandung + tich;
end
fprintf ('fx(pi/3) = %f\n',Ketqua1);
fprintf ('Pm(pi/3) = %f\n',Tinhgandung);