function x = itlinsolc(ciA,vicA,b)
%function to solve system of linear equations using Jacobi method
%system of equations is represented in matrix form Ax=b
%A has d non zero values in each row
%input arguments are A which is nxn matrix and b which is nx1 vector
%output argument is nx1 vector x
%based on 5.9.3 in zapiski numeryczne from 2 term
kmax=500; % max number of iterations in loop
tol=1e-9; % satisfying tolerance of error
%initial values:
err=1; 
n=size(ciA,1);
x=zeros(n,1);
k=1;
%calculate diag and divide by it only once before loop for efficiency
[vicA,d]=diagonal(ciA,vicA);
vicA=vicA./d;
b=b./d;
while err >= tol && k<=kmax
    prev=x;
    x=(b-Ax(ciA,vicA,prev)); %formula from lecture (it was already divided by diagonal)
    err=norm(x-prev,1); %it is faster to compare consecutive approximations to approximate error
    k = k + 1;
end
%check if satisfying solution was found:
if err>=tol
    x=zeros(n,1);
end
end

