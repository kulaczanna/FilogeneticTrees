function [clusterGroupsArray] = mergeRows(clusterGroupsArray, row1, row2)
   
    counter = 1;
 
    for c = 1 : length(clusterGroupsArray)
        if (clusterGroupsArray(row1, c) == 0)
            
            if (~(clusterGroupsArray(row2, counter) == 0))
                clusterGroupsArray(row1, c) = clusterGroupsArray(row2, counter);
                counter = counter + 1;
            else
                break
            end
            
        end
    end
    
    clusterGroupsArray(row2, :) = 0; 
    
end