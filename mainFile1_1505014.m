x1 = 0:.1:1;
y1 = log(1+x1);
plot(x1,y1,'-red'),xlim([-1 1]);
title('ln(1+x) graph with built in function');
legend('ln(1+x)');
xlabel('x-axis');
ylabel('y = ln(1+x)');
%ax = gca;
%ax.XAxisLocation = 'origin';
%ax.YAxisLocation = 'origin';
grid on;
figure;


y2 = lnCalc_1505014(x1,1);
y3 = lnCalc_1505014(x1,3);
y4 = lnCalc_1505014(x1,5);
y5 = lnCalc_1505014(x1,20);
%grid on;
plot(x1,y1);
hold on;
plot(x1,y2);
plot(x1,y3);
plot(x1,y4);
plot(x1,y5);
title('ln(1+x) graph with Series expansion');
legend('ln(1+x) with built in funciton','ln(1+x) with 1 term ','ln(1+x) with 3 term ','ln(1+x) with 5 term ','ln(1+x) with 20 term ');
xlabel('x-axis');
ylabel('y = ln(1+x)');
hold off;
figure;

xe = linspace(1,50,50);
ye = plot_ln_Error_1505014(50);
plot(xe,ye,'--rs',...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',3);
title('Relative approximate Error with different number of terms');
xlabel('Number of Iterations');
ylabel('Relative approx. error ');
grid on;