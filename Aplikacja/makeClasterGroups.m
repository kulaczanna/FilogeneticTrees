function [w] = makeClasterGroups(k, w, minValueY, minValueX)
    
    if (k == 1)
        w(1,1) = minValueY;
        w(1,2) = minValueX;      
    else
                for z = 2:10
                    for v = 1 : 10
                        if minValueX >= w(v, z)
                            minValueX = minValueX+1   % czy na pewno zawsze ma si� zwi�ksza�?
                        end
                        break
                    end
                    break
                end
                
            wierszX = 0;
                for p = 1 : 10
                    if (ismember(minValueX, w(p, 1)))
                        wierszX = p;
                        break
                    end
                end
                
        for j = 1 : 10
            if ismember(minValueY, w(j,:))
                if (~(wierszX == 0))
                    temp = w;
                    w = mergeRows(temp, j, wierszX)
                    return
                else
                    for i = 1 : 10
                            if w(j, i) == 0
                                w(j, i) = minValueX;
                                return
                            end
                    end
                    return
                end
            else
                if (~(wierszX == 0))
                      for i = 1 : 10
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
