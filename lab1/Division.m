function[z]=Division(y)
    x = 1.32;
    z = 0.75;
    
    for k=1:6
        z = 2*z - y*z^2;
        fprintf('%f\n', k);
    end
    z = z * x;
end