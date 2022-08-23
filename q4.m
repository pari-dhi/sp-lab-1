%common parameters
T = 1;
t1 =-0.25;
t2 = 0.25;
N = 2;
syms t;

%function for first signal
x1 = piecewise((t > -0.25) & (t<0), -1*t ,(t > 0) & (t< 0.25),t);
V1 = fourierCoeff(t, x1, T, t1, t2, N);
fs_idx = -N:N;

figure;
fplot(x1);
hold on;
stem(fs_idx, V1);
grid on;
hold off;


%for the second signal, instead of plotting the signal directly, the 
% magnitude and phase plots of the signals are plotted, as not doing 
% this would plot only the real part which is 0.

%function for second signal
x2 = piecewise((t > -0.25) & (t < 0.25), t);
V2 = fourierCoeff(t, x2, T, t1, t2, N);

figure;
fplot(x2);
hold on;
stem(fs_idx, abs(V2));
stem(fs_idx, angle(V2));
grid on;
hold off;
