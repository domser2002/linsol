clearvars;
clc;
%script to test correctness of itlinsolc
tol=1e-8;
%correctness test 1:
ciA=[1;2;3];
vicA=[1;1;1];
b=[1;2;3];
x=itlinsolc(ciA,vicA,b);
if norm(Ax(ciA,vicA,x)-b,1)<tol
    disp("OK")
elseif x==zeros(3,1)
    disp('unable to find solution')
else
    disp('error')
end
%correctness test 2:
ciA=[1 2;1 2;1 3];
vicA=[3 -2;4 3;-1 -1];
b=[1;2;3];
x=itlinsolc(ciA,vicA,b);
if norm(Ax(ciA,vicA,x)-b,1)<tol
    disp("OK")
elseif x==zeros(3,1)
    disp('unable to find solution')
else
    disp('error')
end
%correctness test 3:
ciA=[1 2 3;1 2 4;1 3 4;2 3 4];
vicA=[1 1 1;1 1 1;1 1 1;1 1 1]; %not convergent
b=[1;2;3;4];
x=itlinsolc(ciA,vicA,b);
if norm(Ax(ciA,vicA,x)-b,1)<tol
    disp("OK")
elseif x==zeros(4,1)
    disp('unable to find solution')
else
    disp('error')
end
%correctness test 4:
ciA=[1 5;1 2;3 5;2 4;5 7;3 6;1 7];
vicA=[3 1;2 5;8 7;4 6;5 1;2 10;2 3];
b=[1;2;3;4;5;6;7];
x=itlinsolc(ciA,vicA,b);
if norm(Ax(ciA,vicA,x)-b,1)<tol
    disp("OK")
elseif x==zeros(7,1)
    disp('unable to find solution')
else
    disp('error')
end