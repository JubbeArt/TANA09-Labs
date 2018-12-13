err = [];
i = 1;

for x = 1:0.01:2
   err(i) = abs(Division(x) - 1.32/x);
   i = i + 1;
end