function gr = falsePosMethod_1505014( funcCalc,g1,g2,es,mxIt)

f1 = funcCalc(g1);
f2 = funcCalc(g2);
er = 10;
iter = 0;
pa = g1;

while( er > es && iter <=mxIt)
    gr = g2 - f2.*(g1-g2)./(f1-f2);
    %display(gr);
    fr = funcCalc(gr);
    %display(fr);
    if sign(fr) == sign(f1)
        g1 = gr;
        f1 = fr;
    else 
        g2 = gr;
        f2 = fr;
    end
    er = abs(gr - pa)./gr.*(100);
    pa = gr;
    iter = iter + 1;
end

end

%function out = funcCalc(in)
%out = tan(in).*90 - (44.145)./(cos(in).^2)+ 0.8;
%end

