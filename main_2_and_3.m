%Georgios Tsiris, 1115201700173
clear; clc;
format long g

n = 8;
A = zeros(n,n);
for i=1:n
    for j=1:n
        A(i,j) = 1/(i+j-1);
    end
end
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
