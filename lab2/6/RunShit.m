k = 100;
U = CreateSubspace(RefSet, RefAns, k);

rightAnswers = 0;

for i = 1:2007
    shortestDistance = DistanceFromSubspace(U{1}, TestSet(:, i));
    digit = 0;    
    
    for j = 2:10
        d = DistanceFromSubspace(U{j}, TestSet(:, i));
        
        %fprintf('%.0f - %f\n', j-1, d);
        
        if d < shortestDistance
            shortestDistance = d;
            digit = j-1;
        end
    end
    
    %fprintf('%.0f - %.0f\n', digit, TestAns(i));
    
    if digit == TestAns(i)
        rightAnswers = rightAnswers + 1;
    end
end

fprintf('%.0f out of 2007 (%f) with k=%0.f\n', rightAnswers, rightAnswers/2007, k);


