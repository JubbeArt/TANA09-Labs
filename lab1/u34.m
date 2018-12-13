x = 10.^-(0:0.1:16);

u = eps() / 2;
RT = abs(x./2);

if true
    f1 = (exp(x)-1)./x;
    %RX_f1 = u * ( abs(exp(x)./x) + 2* abs((exp(x)-1)./x) );
    RX_f1 = u * (abs(1./x + 3));
    
    loglog(x, abs(f1-1), x, RX_f1 + RT);
else
    f2 = (exp(x)-1)./log(exp(x));
    
    %a = exp(x);
    %b = a - 1;
    %c = log(a);
    %d = b.\c;
    
    %RX_f2 = u * ( ...
    %    abs( (log(a)-1).*a./(log(a).^2) + 1./log(a).^2 ) + ...
    %    abs( b./log(a) ) + ...
    %    abs( b./c ) + ...
    %    abs( d ) ...
   %);
   RX_f2 = u * (x + 3);

    loglog(x, abs(f2-1), x, RX_f2 + RT);
end