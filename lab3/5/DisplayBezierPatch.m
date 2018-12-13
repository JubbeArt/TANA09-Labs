function [] = DisplayBezierPatch(P1, P2, P3, P4, N)
    t = (0:N)'/N;
    
    pt = (1-t).^3*P1' + 3*(1-t).^2.*t*P2 + 3*(1-t).*t.^2*P3 + t.^3*P4';
    x = pt(:, 1);
    y = pt(:, 2);    
    
    plot(x, y);
end

