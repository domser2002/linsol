function x = gauss_seidel(A,b)
%GAUSS_SEIDEL function to solve system of linear equations using
%Gauss-Seidel method
%system of equations is represented in matrix form Ax=b
%input arguments are A which is nxn matrix and b which is nx1 vector
%output argument is nx1 vector x
%based on 5.9.4 in zapiski numeryczne from 2 term
U = triu(A)- diag(diag(A)); % elements above diag in A
AM=(U-A)\U; % -(L+D)^(-1)*U
B=(A-U)\b; % (L+D)^(-1)*b
kmax=500; % max number of iterations in loop
tol=1e-9; % satisfying tolerance of error
%initial values:
err=Inf; 
n=size(A,1);
x=zeros(n,1);
k=1;
while err >= tol && k<=kmax
    prev=x;
    x = AM*prev + B; % formula from lecture
    err=norm(b-A*x,1);
    k = k + 1;
end
end