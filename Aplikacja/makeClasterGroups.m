function [clusterGroupsArray] = makeClasterGroups(i, clusterGroupsArray, helperclusterGroupsArray, ...
    minValueY, minValueX, lengthOfMatrix, branchLength)
    
    minValueX = helperclusterGroupsArray(2, minValueX);

    if (i == 1)

        clusterGroupsArray(1,1) = minValueY;
        clusterGroupsArray(1,2) = minValueX; 
        displayResult(i, minValueY, minValueX, branchLength, 1);
        
    else

        rowWithMinValueX = 0;
        for r1 = 1 : length(clusterGroupsArray)
            if (ismember(minValueX, clusterGroupsArray(r1, 1)))
                rowWithMinValueX = r1;
                break
            end
        end
        
        rowWithMinValueY = 0;
        for r2 = 1 : length(clusterGroupsArray)
            if (ismember(minValueY, clusterGroupsArray(r2, :)))
                rowWithMinValueY = r2;
                break
            end
        end

        for r3 = 1 : length(clusterGroupsArray)
            if (~(rowWithMinValueY == 0))
                if (~(rowWithMinValueX == 0))
                    
                    clusterGroupsArray = mergeRows(clusterGroupsArray, rowWithMinValueY, rowWithMinValueX);
                    displayResult(i, rowWithMinValueY, rowWithMinValueX, branchLength, 4);
                    return
                    
                else
                    
                    for c1 = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(r3, c1) == 0
                            clusterGroupsArray(r3, c1) = minValueX;
                            displayResult(i, minValueY, minValueX, branchLength, 3);
                            return
                        end
                    end
                    return
                    
                end
            else
                
                if (~(rowWithMinValueX == 0))
                    
                    for c2 = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(rowWithMinValueX, c2) == 0
                            clusterGroupsArray(rowWithMinValueX, c2) = minValueY;
                            displayResult(i, minValueY, minValueX, branchLength, 2);
                            return
                        end
                    end
                    
                else
                    
                    clusterGroupsArray(minValueY,1) = minValueY;
                    clusterGroupsArray(minValueY,2) = minValueX;
                    displayResult(i, minValueY, minValueX, branchLength, 1);
                    return
                    
                end
                
            end
        end
        
    end
end