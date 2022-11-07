function [vicA,x] = diagonal(ciA,vicA)
%function which works similar to diag(A) but also returns A with zeros on diag
% A is represented as in our problem
n=size(ciA,1);
for i=1:n
    ciA(i,:)=(ciA(i,:)==i);
end
[row,col]=find(ciA);
rc = sortrows([row(:), col(:)]);
row = rc(:,1);
col = rc(:,2);
x=zeros(n,1);
for i=1:n
    x(i)=vicA(row(i),col(i));
    vicA(row(i),col(i))=0;
end
end

