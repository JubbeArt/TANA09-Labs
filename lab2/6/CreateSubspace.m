function [subspaces] = CreateSubspace( RefSet, RefAns, k )
    R = cell(10, 1);
    subspaces = cell(10, 1);
    
    for i = 1:1707
        R{RefAns(i) + 1} = [R{RefAns(i) + 1}, RefSet(:, i)];
    end
    
    for i = 1:10
        [U, ~, ~] = svd(R{i});
        subspaces{i} = U(:,1 : k);
    end
end

