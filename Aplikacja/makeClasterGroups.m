function [w] = makeClasterGroups(k, w, w1, minValueY, minValueX, matrixLength)
    
minValueX = w1(2, minValueX);
    if (k == 1)
        w(1,1) = minValueY;
        w(1,2) = minValueX;      
    else                
            wierszX = 0;
                for p = 1 : matrixLength
                    if (ismember(minValueX, w(p, 1)))
                        wierszX = p;
                        break
                    end
                end
                
                wierszY = 0;
                for q = 1 : matrixLength
                    if (ismember(minValueY, w(q, :)))
                        wierszY = q;
                        break
                    end
                end
                
        for j = 1 : matrixLength
            if (~(wierszY == 0))
                if (~(wierszX == 0))
                    temp = w;
                    w = mergeRows(temp, wierszY, wierszX);
                    return
                else
                    for i = 1 : matrixLength
                            if w(j, i) == 0
                                w(j, i) = minValueX;
                                return
                            end
                    end
                    return
                end
            else
                if (~(wierszX == 0))
                      for i = 1 : matrixLength
                            if w(wierszX, i) == 0
                                w(wierszX, i) = minValueY;
                                return
                            end
                      end
                else
                     w(minValueY,1) = minValueY;
                     w(minValueY,2) = minValueX;
                     return
                end
            end
        end
    end
