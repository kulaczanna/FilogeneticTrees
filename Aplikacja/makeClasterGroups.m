function [w] = makeClasterGroups(k, w, minValueY, minValueX)

%     for x = 1:9
%         if ismember(minValueX, w)
%             minValueX = minValueX + 1;
%         end
%     end

    
        
    if (k == 1)
        w(1,1) = minValueY;
        w(1,2) = minValueX;
    else
        
                for z = 2:10
                    for v = 1 : 10
                        if minValueX > w(v, z)
                            minValueX = minValueX+1
                        end
                        break
                    end
                    break
                end
    
        for j = 1 : 9
            if ismember(minValueY, w(j,:))
                yWiersz = j;
                
                for h = 1 : 9
                    if ismember(minValueX, w(h,:))
                        xWiersz = h;
                    else
                        for i = 1 : 9
                            if w(yWiersz, i) == 0
                                w(yWiersz, i) = minValueX;
                                return
                            end
                        end
                    end
                end
            else
                for g = 1 : 10
                    if ismember(minValueX, w(g,:))
                        xWiersz = g;
                        if w(xWiersz, g ) == 0
                            w(xWiersz, g) = minValueX;
                                return
                        end
                    end
                end
                
                w(minValueY,1) = minValueY;
                w(minValueY,2) = minValueX;
                return
        
            end
        end
    end
                  
