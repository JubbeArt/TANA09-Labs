p1 = @(x) cos(x)^2;

x0 = 1;

fprintf('%f: %f\n', 0, x0);

for i = 1:100
   x0 = p1(x0);
   fprintf('%f: %f\n', i, x0);
end

%sprintf('asdf');x