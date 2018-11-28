function [w] = makeClasterGroups(k, w, w1, minValueY, minValueX, matrixLength, branchLength)
    
flag = 0;
minValueX = w1(2, minValueX);
    if (k == 1)
        w(1,1) = minValueY;
        w(1,2) = minValueX; 
        fprintf('The %d branch is: %d - %d. The Length is: %f. \n', k, minValueY, minValueX, branchLength);
%       flag = 2
    else                
            wierszX = 0;
                for p = 1 : length(w)
                    if (ismember(minValueX, w(p, 1)))
                        wierszX = p;
                        break
                    end
                end
                
                wierszY = 0;
                for q = 1 : length(w)
                    if (ismember(minValueY, w(q, :)))
                        wierszY = q;
                        break
                    end
                end
                
        for j = 1 : length(w)
            if (~(wierszY == 0))
                if (~(wierszX == 0))
                    temp = w;
                    w = mergeRows(temp, wierszY, wierszX);
                    fprintf('The %d branch is merge of: %d and %d. The Length is: %f. \n', k, wierszY, wierszX, branchLength);
%                             flag = 3
                    return
                else
                    for i = 1 : length(w)
                            if w(j, i) == 0
                                w(j, i) = minValueX;
                    fprintf('The %d branch is: %d. The Length is: %f. \n', k, minValueX, branchLength);
%                                         flag = 1
                                return
                            end
                    end
                    return
                end
            else
                if (~(wierszX == 0))
                      for i = 1 : length(w)
                            if w(wierszX, i) == 0
                                w(wierszX, i) = minValueY;
                                fprintf('The %d branch is: %d. The Length is: %f. \n', k, minValueY, branchLength);
%                                         flag = 1
                                return
                            end
                      end
                else
                     w(minValueY,1) = minValueY;
                     w(minValueY,2) = minValueX;
                     fprintf('The %d branch is: %d - %d. The Length is: %f. \n', k, minValueY, minValueX, branchLength);
%                              flag = 2
                     return
                end
            end
        end
    end
