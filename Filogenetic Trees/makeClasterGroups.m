function [clusterGroupsArray, nodesNumber] = makeClasterGroups(i, clusterGroupsArray, helperclusterGroupsArray, ...
    minValueY, minValueX, branchLength, nodesNumber)
    
    minValueX = helperclusterGroupsArray(2, minValueX);

    if (i == 1)

%         displayResult(clusterGroupsArray, i, minValueY, minValueX, branchLength, 1);
        clusterGroupsArray(1,1) = minValueY;
        clusterGroupsArray(1,2) = minValueX; 
        
        nodesNumber = nodesNumber + 3;
        
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

%                     displayResult(clusterGroupsArray, i, rowWithMinValueY, rowWithMinValueX, branchLength, 4);
                    clusterGroupsArray = mergeRows(clusterGroupsArray, rowWithMinValueY, rowWithMinValueX);
                    nodesNumber = nodesNumber + 1;
                    return
                    
                else
                    
                    for c1 = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(r3, c1) == 0
%                             displayResult(clusterGroupsArray, i, minValueY, minValueX, branchLength, 3);
                            clusterGroupsArray(r3, c1) = minValueX;
                            nodesNumber = nodesNumber + 2;
                            return
                        end
                    end
                    return
                    
                end
            else
                
                if (~(rowWithMinValueX == 0))
                    
                    for c2 = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(rowWithMinValueX, c2) == 0   
%                             displayResult(clusterGroupsArray, i, minValueY, minValueX, branchLength, 2);
                            clusterGroupsArray(rowWithMinValueX, c2) = minValueY;     
                            nodesNumber = nodesNumber + 2;
                            return
                        end
                    end
                    
                else
                    
%                     displayResult(clusterGroupsArray, i, minValueY, minValueX, branchLength, 1);
                    clusterGroupsArray(minValueY,1) = minValueY;
                    clusterGroupsArray(minValueY,2) = minValueX;
                    nodesNumber = nodesNumber + 3;
                    return
                    
                end
                
            end
        end
        
    end
end