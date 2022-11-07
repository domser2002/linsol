%script to test diagonal function
clearvars;
clc;
%sample ciA and vicA
ciA=[1 4 5;1 2 5;2 3 5;3 4 5;1 3 5];
vicA=[1 1 1;1 2 1;2 3 1;1 4 1;1 1 1];
[vicA,d]=diagonal(ciA,vicA);
%correct results calculated on paper
correct_d=[1;2;3;4;1];
correct_vicA=[0 1 1;1 0 1;2 0 1;1 0 1;1 1 0];
%display information
if d~=correct_d
    disp("Error in calculating d")
end
if vicA~=correct_vicA
    disp("Error in changing vicA")
end
if d==correct_d
    if vicA==correct_vicA
        disp("OK")
    end
end
%test 2
ciA=[1 5;1 2;3 5;2 4;5 7;3 6;1 7];
vicA=[3 1;2 5;8 7;4 6;5 1;2 10;2 3];
correct_d=[3;5;8;6;5;10;3];
[vicA,d]=diagonal(ciA,vicA);
if d~=correct_d
    disp("Error in calculating d")
else
    disp("OK")
end