function F = fourierCoeff(t, xt, T, t1, t2, N)
    w0 = (2*pi)/T;
    F = zeros(2*N+1, 1);
    %using for loop to find coefficients
    for x = 1: ((2 * N) + 1)
        %1syms t;
        var = exp(-1 * 1j *(x - N - 1)* w0 * t);
        var = var * xt;
        haha = int(var, t, t1, t2);
        haha = haha/T;
        F(x) = haha;
    end
end