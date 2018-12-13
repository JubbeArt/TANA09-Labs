function [l] = CalculateLength(sx, sy, N)
    l = 0;
    tt = (0:N)/N;

    for i = 1:N
        l = l + norm([
            ppval(sx, tt(i)) - ppval(sx, tt(i+1))
            ppval(sy, tt(i)) - ppval(sy, tt(i+1))
        ]);  
    end
end

