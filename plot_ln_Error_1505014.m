function out = plot_ln_Error( term )
prev = lnCalc_1505014(.5,1);
out(1) = 100;
for i=2:term
    cur = lnCalc_1505014(.5,i);
    out(i) = (cur-prev)/cur*100;
    prev = cur;
   % display(prev);
end

end

