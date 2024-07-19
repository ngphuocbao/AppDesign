function [x,n] = PP_Tiep_Tuyen(fx, a, b, ss)
%fx là phıõng tr?nh ban ğ?u 
%a, b là kho?ng phân li nghi?m 
%ss là sai s?
fx = str2sym(fx);
DF1 = diff(fx);%ğ?o hàm c?p 1
DF2 = diff(DF1);%ğ?o hàm c?p 2 c?a fx
fx = matlabFunction(fx);
DF1 = matlabFunction(DF1);
DF2 = matlabFunction(DF2);
x0=(a+b)/2; %xác ğ?nh ğı?c x0
z = feval(fx,x0)/feval(DF1,x0);
n =1; %s? l?n l?p
x=x0-z; %tính nghi?m
while abs(x-x0)>=ss
    x0 = x;
    z = feval(fx,x0)/feval(DF1,x0);
    x=x0-z;
    n=n+1;
end
end