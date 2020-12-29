function out = lnCalc( x ,it )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
out = 0;
for i = 1:it
    out = out +  (-1)^(i+1) * (x.^i)/i;
    %display(out)
end

end

