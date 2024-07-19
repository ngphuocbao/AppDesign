function[d,n]= PP_Lap_Don(fx, fp, a, b, ss)
fx= str2func(['@(x)', fx]);
fp= str2func(['@(x)', fp]);
n=0;
c= (a+b)/2;
if (fx(a)*fx(c) < 0)
    x0=a;
else
    x0=b;
end
while(1)
    d= fp(x0);
    n=n+1;
    e=abs(d - x0);
    if(e<ss)
        break;
    end
    x0=d;
end
end 

        

