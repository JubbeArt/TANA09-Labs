function [d] = DistanceFromSubspace( A, TestDigit )
    d = norm(TestDigit - A*A'*TestDigit);
    %disp(d)
    
    %x = (A'*A)\(A'*TestDigit);
    %d = 1/norm(x);    
end

