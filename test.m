clearvars;
clc;

n=10000;
A=rand(n);
while det(A)==0
    A=rand(n);
end
b=rand([n 1]);

tic;
disp(gauss_seidel(A,b));
t=toc;
disp(t);