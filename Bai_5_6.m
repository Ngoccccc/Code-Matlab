function[] = Bai_5_6(data, N)
    for i=1:N
        X(i) = data(i,1);
        Y(i) = data(i,2);
        f(i) = data(i,3);
    end;
    %% x^4      y^2*x^2 = f*x^2 
    %% x^2*y^2   y^4    = f*y^2
    X_mu_4 = sum(X.*X.*X.*X);
    X_2_Y_2 = sum(X.*Y.*X.*Y);
    Y_mu_4 = sum(Y.*Y.*Y.*Y);
    f_x_2 = sum(f.*X.*X);
    f_y_2 = sum(f.*Y.*Y);
    mat1 = [X_mu_4, X_2_Y_2; X_2_Y_2, Y_mu_4];
    mat2 = [f_x_2; f_y_2];
    Output = inv(mat1)*mat2
end