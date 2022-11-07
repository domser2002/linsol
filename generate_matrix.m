function [ciA,vicA,b] = generate_matrix(n,d)
%GENERATE_MATRIX Summary of this function goes here
%   Detailed explanation goes here
ciA=zeros([n d]);
vicA=rand([n d]);
    for i=1:n
        ciA(i,:)=randperm(n,d);
        j=find(ciA(i,:)==i);
        if j
            vicA(i,j)=vicA(i,j)+n;
            continue;
        else
            perm=randperm(d,d);
            ciA(i,perm(1))=i;
            vicA(i,perm(1))=vicA(i,perm(1))+n;
        end
    end
b=rand([n 1]);
end

