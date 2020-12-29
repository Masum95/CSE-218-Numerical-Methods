
funcCalc = @(in)  (tan(in).*90 - (44.145)./(cos(in).^2)+ 0.8);
x = 0:.05:1.5;
y = funcCalc(x);
plot(x,y),ylim([-50 50]);
grid on;
yf = falsePosMethod_1505014(funcCalc,0.6,0.8,0.5,50);
fprintf('Value obtained from false position method %f\n\n',yf);
ys = SecantMethod_1505014(funcCalc,0.6,0.8,0.5,50);
fprintf('Value obtained from Secant method %f\n',ys);

