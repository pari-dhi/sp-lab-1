%using the function for the cosine curve
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
N = 5;
t1 = 0;
t2 = 1;
V = fourierCoeff(t, xt, T, t1, t2, N);

% using the second function
time_grid=-0.5:0.001:0.5;
y = partialfouriersum(V, T, time_grid);

% plotting the output
figure;
plot(time_grid, y, "red");
grid on;
hold on;
fplot(xt, [(time_grid(1)), time_grid(length(time_grid))], "blue");
hold off;

x = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
%calculating maximum absolute error
mae = 0;
for xx = 1:101
    v1 = x(xx);
    v2 = y(xx);
    lol = abs(v1 - v2);
    if (lol > mae)
        mae = lol;
    end
end
d = ["The Maximum Absolute Error is ", mae];
disp(d);

%calculating root mean square error
rmse = 0;
for xx = 1:101
    var = abs((x(xx) - y(xx))*(x(xx) - y(xx)));
    rmse = rmse + var;
end
rmse = rmse/101;
rmse = sqrt(rmse);
d = ["The Root Mean Square Error is ", rmse];
disp(d);