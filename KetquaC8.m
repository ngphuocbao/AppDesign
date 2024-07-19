fx= 'x^3 - 2*x^2 - 4*x +7';
fp= '(x^3)/4 - (x^2)/2 + 7/4';
ss = 0.005;
a= 1 ;
b= 2;
[nghiem, soLanLap]= PPLapdon(fx, fp, a, b, ss);
disp(['nghiem tim duoc= ', num2str(nghiem)]);
disp(['so lan lap= ', num2str(soLanLap)]);