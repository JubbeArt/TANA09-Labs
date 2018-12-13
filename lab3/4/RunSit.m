DisplayMap();
%Points = AddPointsToMap(10);
x = Points(:, 1);
y = Points(:, 2);

[sx, sy] = ParametricCurve(x, y);

%n = 10 * length(x);
%tt = (0:n) / n;

N = 100;
tt = (0:N) / N;

plot(ppval(sx, tt), ppval(sy, tt), 'LineWidth', 2);