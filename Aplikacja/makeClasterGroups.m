function [w] = makeClasterGroups(k, w, minValueY, minValueX)


    if (k == 1)
        
        w(1,1) = minValueY
        w(1,2) = minValueX
        
    else

        for j = 1 : 10 % szukamy w ka¿dym wierszu
            for i = 1 : 10
                if(minValueY == w(j,1))
                    if(minValueX == w(j,1))
                        
                        if (w(minValueY, i) == 0)
                            w(minValueY, i) = minValueY
%                             w(minValueY, i + 1) = minValueY
                            
                        end
                        w(minValueX, i) = 0
                    elseif (w(minValueY, i) == 0)
                            w(minValueY, i) = minValueX
                    else
                        return;
                    end
                    
                else
                    
                    if(minValueX == w(j,1))
                        
                        if (w(minValueY, i) == 0)
                            w(minValueY, i) = minValueY
%                             w(minValueY, i + 1) = minValueY
                            
                        end
                        
                        w(minValueX, i) = 0
                        
                    else
                        w(minValueY,1) = minValueY
                        w(minValueY,2) = minValueX
                        break;
                        
                    end
                end
            end
            break;
        end
    end
    
    
end
