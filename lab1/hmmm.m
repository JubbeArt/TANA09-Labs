fplot(@(x) Division(x), [1 2], '--or')
hold on
fplot(@(x) 1.32/x, [1 2], '-.*c')
hold off
grid on