function [clusterGroupsArray] = makeClasterGroups(i, clusterGroupsArray, helperclusterGroupsArray, ... % change 'i'...
    minValueY, minValueX, lengthOfMatrix, branchLength)
    
    minValueX = helperclusterGroupsArray(2, minValueX);

    if (i == 1)

        clusterGroupsArray(1,1) = minValueY;
        clusterGroupsArray(1,2) = minValueX; 
        fprintf('The %d branch is: %d - %d. The Length is: %f. \n', i, ...
            minValueY, minValueX, branchLength); % make function to display
        
    else

        rowWithMinValueX = 0;
        for p = 1 : length(clusterGroupsArray)
            if (ismember(minValueX, clusterGroupsArray(p, 1)))
                rowWithMinValueX = p;
                break
            end
        end
        
        rowWithMinValueY = 0;
        for q = 1 : length(clusterGroupsArray)
            if (ismember(minValueY, clusterGroupsArray(q, :)))
                rowWithMinValueY = q;
                break
            end
        end

        for j = 1 : length(clusterGroupsArray)  % change name of iterators!!!
            if (~(rowWithMinValueY == 0))
                if (~(rowWithMinValueX == 0))
                    
                    clusterGroupsArray = mergeRows(clusterGroupsArray, rowWithMinValueY, rowWithMinValueX);
                    fprintf('The %d branch is merge of: %d and %d. The Length is: %f. \n', i, ... 
                        rowWithMinValueY, rowWithMinValueX, branchLength);
                    return
                    
                else
                    
                    for i = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(j, i) == 0
                            clusterGroupsArray(j, i) = minValueX;
                            fprintf('The %d branch is: %d. The Length is: %f. \n', i, minValueX, branchLength);
                            return
                        end
                    end
                    return
                    
                end
            else
                
                if (~(rowWithMinValueX == 0))
                    
                    for i = 1 : length(clusterGroupsArray)
                        if clusterGroupsArray(rowWithMinValueX, i) == 0
                            clusterGroupsArray(rowWithMinValueX, i) = minValueY;
                            fprintf('The %d branch is: %d. The Length is: %f. \n', i, minValueY, branchLength);
                            return
                        end
                    end
                    
                else
                    
                    clusterGroupsArray(minValueY,1) = minValueY;
                    clusterGroupsArray(minValueY,2) = minValueX;
                    fprintf('The %d branch is: %d - %d. The Length is: %f. \n', i, minValueY, minValueX, branchLength);
                    return
                    
                end
                
            end
        end
        
    end
end