t = [0 2 4 5 6];
y = [0 0 1 0 0];

pn = csape(t, y, 'variational');

tt = 0:0.01:6;
yy = fnval(pn, tt);
plot(tt, yy, t, y, '*');

%fnval(pn, 1)
%fnval(pn, 3)

% 3.2
% s(1) = -0.2277
% s(3) =  0.8080

pn2 = csape(t, y, 'complete', [0, 0]);
yy2 = fnval(pn2, tt);

hold on;
plot(tt, yy2);
hold off;


fnval(pn2, 1)
fnval(pn2, 3)

% 3.3
% s(1) = -0.1339
% s(3) =  0.7946
% Most visible near the end points