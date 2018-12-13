function [sx, sy] = ParametricCurve(x, y)
    t = 0:1/(length(x)-1):1;
    sx = csaps(t, x);
    sy = csaps(t, y);
end

