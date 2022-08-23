t1 = 0.1;
T = 1;
N = 10;
N1 = 10;
N2 = 20;
N3 = 30;
x = 1;
syms t;
fs_idx = -N:N;

%to find the coefficients
V = fourierCoeff(t, x, T, -1*t1, t1, N);
figure;
stem(fs_idx, V, "filled");
grid on;

%finding scaled coefficients
V1 = N1 * V;
V2 = N2 * V;
V3 = N3 * V;

figure;
stem(fs_idx, V1, "filled");
hold on;
stem(fs_idx, V2, "filled");
hold off;
hold on;
stem(fs_idx, V3, "filled");
hold off;
grid on;

%partial reconstruction 
time = -0.5:0.01:0.5;
A = partialfouriersum(V, T, time);
A1 = partialfouriersum(fourierCoeff(t, x, T, -1*t1, t1, 50), T, time);
%A2 = partialfouriersum(fourierCoeff(t, x, T, -1*t1, t1, 10*N), T, time);
%A3 = partialfouriersum(fourierCoeff(t, x, T, -1*t1, t1, 100*N), T, time);

figure;
plot(time, A, "magenta");
hold on;
plot(time, A1, "blue");
hold off;
%{
hold on;
plot(time, A2, "green");
hold off;
hold on;
plot(time, A3, "red");
hold off;
%}
grid on;


