function [clusterGroupsArray, nodesNumber, isMerge, changedRowNumber, sequencesToSign, branchLengthMatrix] ...
    = makeClusterGroups(i, clusterGroupsArray, helperClusterGroupsArray, ...
    minValueY, minValueX, nodesNumber, sequencesToSign, branchLengthMatrix)
    
    minValueX = helperClusterGroupsArray(2, minValueX);

    if (i == 1)

        clusterGroupsArray(minValueY, 1) = minValueY;
        clusterGroupsArray(minValueY, 2) = minValueX; 
        nodesNumber = nodesNumber + 3;
        isMerge = false;
        changedRowNumber = minValueY;
        sequencesToSign = [minValueY, minValueX];
        branchLengthMatrix(minValueY, minValueX) = 1;
        
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

                    for h = 1 : length(branchLengthMatrix) - 1
                        for g = 1 : length(branchLengthMatrix) - 1
                            if (clusterGroupsArray(rowWithMinValueY, h) ~= 0)
                                if (clusterGroupsArray(rowWithMinValueX, g) ~= 0)
                                    if (clusterGroupsArray(rowWithMinValueY, h) > clusterGroupsArray(rowWithMinValueX, g))
                                    branchLengthMatrix(clusterGroupsArray(rowWithMinValueX, g), ...
                                    clusterGroupsArray(rowWithMinValueY, h)) = 5;
                                    else
                                    branchLengthMatrix(clusterGroupsArray(rowWithMinValueY, h), ...
                                        clusterGroupsArray(rowWithMinValueX, g)) = 5;
                                    end
                                end
                            end
                        end
                    end

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
                            for k = 1 : length(branchLengthMatrix) - 1
                                if (clusterGroupsArray(rowWithMinValueY, k) ~= 0)
                                    branchLengthMatrix(clusterGroupsArray(rowWithMinValueY, k), minValueX) = 3;
                                end
                            end
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
                            for k = 1 : length(branchLengthMatrix) - 1
                                if (clusterGroupsArray(rowWithMinValueX, k) ~= 0)
                                    branchLengthMatrix(clusterGroupsArray(rowWithMinValueX, k), minValueY) = 4;
                                end
                            end
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
                    branchLengthMatrix(minValueY, minValueX) = 2;
                    return
                    
                end
                
            end
        end
        
    end
    
end