function x = PP_Gauss_Jordan(A, b)
    [m, n] = size(A);
    if m ~= 4 || n ~= 4
        disp('Kich thuoc sai');
    end
    augMatrix = [A, b];
    for c = 1:m
        pivot = augMatrix(c, c);
        if pivot == 0
            disp('Khong the thuc hien');
        end
        augMatrix(c, :) = augMatrix(c, :) / pivot;
        
        for d = 1:m
            if d ~= c
                augMatrix(d, :) = augMatrix(d, :) - augMatrix(d, c) * augMatrix(c, :);
            end
        end
    end
    x = augMatrix(:, end);
end