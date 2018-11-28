function [] = mergeRows(A, wierszX)
counter = 1;
for j = 1 : 6
        for i = 1 : 6
            if (A(j, i) == 0)
                if (~(A(wierszX, counter) == 0))
                A(j, i) = A(wierszX, counter)
                counter = counter + 1;
                else
                    break
                end
            end
        end
end
A(wierszX, :) = 0
end