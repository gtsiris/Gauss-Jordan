%Georgios Tsiris, 1115201700173
clear; clc;
format long g

 A = [10 -2 -1 2 3 1 -4 7; 5 11 3 10 -3 3 3 -4; 7 12 1 5 3 -12 2 3; 8 7 -2 1 3 2 2 4; 2 -13 -1 1 4 -1 8 3; 4 2 9 1 12 -1 4 1; -1 4 -7 -1 1 1 -1 -3; -1 3 4 1 3 -4 7 6];
[n,n]=size(A);

 x = [-1 1 -1 1 -1 1 -1 1].';
 b = A*x;

% disp('n'); disp(n);
[xn,h,Aa]= pivot_gaussjordan(A,b,n);

err = norm(x-xn, Inf)/norm(x, Inf)
rest = norm(b-A*xn, Inf)/norm(x, Inf)
cond_num = cond(A)

disp('Using euclidian norms to calculate condition number:')
cond_num = norm(A, 2)*norm(inv(A), 2)
disp('Using max norms to calculate condition number:')
cond_num = norm(A, Inf)*norm(inv(A), Inf)
