p1 = @(x) acos(sqrt(x));

x0 = 0.9;

fprintf('%.0f: %f\n', 0, x0);

for i = 1:100
   x0 = p1(x0);
  fprintf('%.0f: %f\n', i, x0);
end

%sprintf('asdf');x