%script to test Ax function
clearvars;
clc;
%sample ciA,vicA and x
ciA=[1 4 5;1 2 5;2 3 5;3 4 5;1 3 5];
vicA=[1 1 1;1 2 1;2 3 1;1 4 1;1 1 1];
x=[1 2 3 4 5]';
fun=Ax(ciA,vicA,x);
corr=[10 10 18 24 9]'; %correct result calculated on paper
if fun==corr
    disp("OK")
end

