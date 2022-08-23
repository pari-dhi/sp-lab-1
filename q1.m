%using the function for the cosine curve
syms t;
syms y(x);
xt = (2 * cos(2*pi*t)) + cos(6*pi*t);
T = 1;
t1 = -1 * T;
t1 = t1/2;
t2 = T/2;
N = 5;
V1 = fourierCoeff(t, xt, T, t1, t2, N);

%plotting the first graph
FS_idx = -N:N;
figure; 
stem(FS_idx,V1); 
grid on;

%square wave
yt = 1;
N2 = 10;
t3 = -0.25;
t4 = 0.25;
V2 = fourierCoeff(t, yt, T, t3, t4, N2);

FS_idx_ = -N2:N2;
figure; 
stem(FS_idx_,V2); 
grid on;



