function dt = TaylorSeries(x,y,point)
l = find(x==point);
if l == length(x)
    h = x(l)-x(l-1);
else
    h = x(l+1)-x(l);
end
if (l >= 2) && (l <= length(x)-1)
    dt = (y(l+1)-y(l-1))/(2*h);
elseif (l - 2 < 0)
    dt = (-y(l+2)+4*y(l+1)-3*y(l))/(2*h);
else
    dt = (3*y(l)-4*y(l-1)+y(l-2))/(2*h);
end

