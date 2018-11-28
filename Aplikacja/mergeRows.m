function [A] = mergeRows(A, row1, row2)
counter = 1;
    for i = 1 : 6
        if (A(row1, i) == 0)
            if (~(A(row2, counter) == 0))
            A(row1, i) = A(row2, counter)
                    counter = counter + 1;
            else
                break
            end
        end
    end
A(row2, :) = 0
end