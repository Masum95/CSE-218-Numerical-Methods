function  out  = SecantMethod( funcCalc,  g1,g2,es,mxIt )

f1 = funcCalc(g1);
f2 = funcCalc(g2);
er = 10;
iter = 0;
pa = g2;
iter = 0;

while(es<er && iter<mxIt)
    gn =  g2 - f2 .* ( g1-g2)./(f1-f2);
    fn = funcCalc(gn);
    er = abs(gn-pa)./gn.*100;
    pa = gn;
    iter = iter+1;
    g1 = g2;
    g2 = gn;
    f1 = f2;
    f2 = fn;
end
out = gn;
end

