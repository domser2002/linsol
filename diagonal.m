function x = diagonal(ciA,vicA)
%function which works as diag(A) but A is represented as in our problem
n=size(ciA,1);
for i=1:n
ciA(i,:)=(ciA(i,:)==i);
end
ciA
[row,col]=find(ciA);
col
x=vicA(col);

end

