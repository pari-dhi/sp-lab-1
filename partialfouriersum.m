function y = partialfouriersum(A, T, time_grid)
    y = zeros(size(time_grid));
    w0 = (2*pi)/T;
    N = (length(A) - 1)/2;
    for x = -N:N
        var = exp(1j*x*w0*time_grid);
        var = var*A(x + N + 1);
        y = y + var;
    end
end