%script to test efficiency of itlinsolc
clearvars;
clc;
tol=1e-8;
%efficiency test 1:
disp('Efficiency test for n=10 000, d=50:')
n=10000;
d=50;
if isfile('efficiency1.mat')
    S=load('efficiency1','ciA','vicA','b');
    ciA=S.('ciA');
    vicA=S.('vicA');
    b=S.('b');
else
    [ciA,vicA,b]=generate_matrix(n,d);
    save('efficiency1','ciA','vicA','b');
end
tic;
x=itlinsolc(ciA,vicA,b);
t=toc;
if norm(Ax(ciA,vicA,x)-b,1)<tol
    T=strcat('Found solution in:',num2str(t),' seconds');
    disp(T)
elseif x==zeros(n,1)
    T=strcat('Unable to find solution, execution took:',num2str(t),' seconds');
    disp(T)
else
    disp('Error')
end
clearvars -except tol;
%efficiency test 2:
disp('Efficiency test for n=100 000, d=50:')
n=100000;
d=50;
if isfile('efficiency2.mat')
    S=load('efficiency2','ciA','vicA','b');
    ciA=S.('ciA');
    vicA=S.('vicA');
    b=S.('b');
else
    [ciA,vicA,b]=generate_matrix(n,d);
    save('efficiency2','ciA','vicA','b');
end
tic;
x=itlinsolc(ciA,vicA,b);
t=toc;
if norm(Ax(ciA,vicA,x)-b,1)<tol
    T=strcat('Found solution in:',num2str(t),' seconds');
    disp(T)
elseif x==zeros(n,1)
    T=strcat('Unable to find solution, execution took:',num2str(t),' seconds');
    disp(T)
else
    disp('Error')
end
clearvars -except tol;
%efficiency test 3:
disp('Efficiency test for n=500 000, d=50:')
n=500000;
d=50;
if isfile('efficiency3.mat')
    S=load('efficiency3','ciA','vicA','b');
    ciA=S.('ciA');
    vicA=S.('vicA');
    b=S.('b');
else
    [ciA,vicA,b]=generate_matrix(n,d);
    save('efficiency3','ciA','vicA','b');
end
tic;
x=itlinsolc(ciA,vicA,b);
t=toc;
if norm(Ax(ciA,vicA,x)-b,1)<tol
    T=strcat('Found solution in:',num2str(t),' seconds');
    disp(T)
elseif x==zeros(n,1)
    T=strcat('Unable to find solution, execution took:',num2str(t),' seconds');
    disp(T)
else
    disp('Error')
end
clearvars -except tol;
%efficiency test 4:
disp('Efficiency test for n=5 000 000, d=50:')
n=5000000; %max
d=50;
if isfile('efficiency4.mat')
    S=load('efficiency4','ciA','vicA','b');
    ciA=S.('ciA');
    vicA=S.('vicA');
    b=S.('b');
else
    [ciA,vicA,b]=generate_matrix(n,d);
    save('efficiency4','ciA','vicA','b');
end
tic;
x=itlinsolc(ciA,vicA,b);
t=toc;
if norm(Ax(ciA,vicA,x)-b,1)<tol
    T=strcat('Found solution in:',num2str(t),' seconds');
    disp(T)
elseif x==zeros(n,1)
    T=strcat('Unable to find solution, execution took ',num2str(t),' seconds');
    disp(T)
else
    disp('Error')
end
clearvars;