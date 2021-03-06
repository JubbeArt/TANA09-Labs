t = [1 1.5 2];
y = [1.6602 1.7383 1.5796];


p = polyfit(t(1:2), y(1:2), 1);
p2 = polyfit(t, y, 2);

p13 = polyval(p, 1.3);

%f = @(x) exp(-x/5)+sin(x);

% polyval(p, 1.3) - polyval(p2, 1.3)

f13 = exp(-1.3/5) + sin(1.3);

err =  abs(f13-p13)