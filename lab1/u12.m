x0 = 0.25;
my = eps()/2;

for i = 1:20
    x0 = 2*(x0^2);
    fprintf('%.0f: %.16f\n', i, x0);
    
    if x0 < my
        fprintf('WE DID IT!!!!\n');
    end
end
