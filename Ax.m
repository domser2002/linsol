function y = Ax(ciA,vicA,x)
%function which calculates product A*x
%A is nxn matrix represented as in our problem, x is nx1 vector
t=x(ciA).*vicA;
y=sum(t,2);
end

