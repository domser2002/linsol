function y = Ax(ciA,vicA,x)
%AX Summary of this function goes here
%   Detailed explanation goes here
n=size(ciA,1);
y=zeros([n 1]);
for i=1:n
    choose=ciA(i,:);
    tmp=x(choose);
    y(i)=vicA(i,:)*tmp;
end
end

