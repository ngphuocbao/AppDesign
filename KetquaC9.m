A = [1, 1, -2, 1; 1, -3, 1, 1; 4, -1, -1, -1; 4, 3, -4, -1];
b = [1; 0; 1; 2];
x = PPgaussJordan(A, b);
disp('Nghiem cua phuong phap Gauss Jordan:');
disp(x);