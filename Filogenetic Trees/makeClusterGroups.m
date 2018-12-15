function [clusterGroupsArray, nodesNumber, isMerge, changedRowNumber, sequencesToSign] ...
    = makeClusterGroups(i, clusterGroupsArray, helperclusterGroupsArray, ...
    minValueY, minValueX, nodesNumber, sequencesToSign)
    
    minValueX = helperclusterGroupsArray(2, minValueX);

    if (i == 1)

        clusterGroupsArray(minValueY, 1) = minValueY;
        clusterGroupsArray(minValueY, 2) = minValueX; 
        nodesNumber = nodesNumber + 3;
        isMerge = false;
        changedRowNumber = minValueY;
        sequencesToSign = [minValueY, minValueX];
        
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
                    nodesNumber = nodesNumber + 1;
                    isMerge = true;
                    changedRowNumber = [rowWithMinValueY, rowWithMinValueX];
                    return
                    
                else
                    
                    for c1 = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(rowWithMinValueY, c1) == 0
                            clusterGroupsArray(rowWithMinValueY, c1) = minValueX;
                            nodesNumber = nodesNumber + 2;      
                            isMerge = false;
                            changedRowNumber = rowWithMinValueY;
                            sequencesToSign(1, end + 1) = minValueX;
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
                            nodesNumber = nodesNumber + 2;       
                            isMerge = false;
                            changedRowNumber = rowWithMinValueX;
                            return
                        end
                    end
                    
                else
                    
                    clusterGroupsArray(minValueY,1) = minValueY;
                    clusterGroupsArray(minValueY,2) = minValueX;
                    nodesNumber = nodesNumber + 3;      
                    isMerge = false;
                    changedRowNumber = minValueY;
                    sequencesToSign(1, end + 1) = minValueY;
                    sequencesToSign(1, end + 1) = minValueX;
                    return
                    
                end
                
            end
        end
        
    end
    
end