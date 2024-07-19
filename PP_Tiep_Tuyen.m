function [x,n] = PP_Tiep_Tuyen(fx, a, b, ss)
%fx l� ph��ng tr?nh ban �?u 
%a, b l� kho?ng ph�n li nghi?m 
%ss l� sai s?
fx = str2sym(fx);
DF1 = diff(fx);%�?o h�m c?p 1
DF2 = diff(DF1);%�?o h�m c?p 2 c?a fx
fx = matlabFunction(fx);
DF1 = matlabFunction(DF1);
DF2 = matlabFunction(DF2);
x0=(a+b)/2; %x�c �?nh ��?c x0
z = feval(fx,x0)/feval(DF1,x0);
n =1; %s? l?n l?p
x=x0-z; %t�nh nghi?m
while abs(x-x0)>=ss
    x0 = x;
    z = feval(fx,x0)/feval(DF1,x0);
    x=x0-z;
    n=n+1;
end
end