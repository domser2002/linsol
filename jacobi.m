function x = jacobi(A,b)
%JACOBI function to solve system of linear equations using
%Jacobi method
%system of equations is represented in matrix form Ax=b
%input arguments are A which is nxn matrix and b which is nx1 vector
%output argument is nx1 vector x
%based on 5.9.3 in zapiski numeryczne from 2 term
kmax=500; % max number of iterations in loop
tol=1e-9; % satisfying tolerance of error
%initial values:
err=1; 
n=size(A,1);
x=zeros(n,1);
k=1;
d=diag(A);
for i=1:n
    A(i,i)=0;
end
while err >= tol && k<=kmax
   % x
    prev=x;
    x=(b-A*prev)./d;
    %dbstop if naninf
    err=norm(x-prev,1);
    k = k + 1;
end
end
