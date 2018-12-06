function [helperClusterGroupsArray] = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX)

    for i = 1 : lengthOfMatrix - 1
        
        helperClusterGroupsArray(1, i) = i;
        if (i < minValueX)
            continue
        else
            helperClusterGroupsArray(2, i) = helperClusterGroupsArray(2, i + 1);
        end
        
    end
    lengthOfMatrix = lengthOfMatrix - 1;
    helperClusterGroupsArray = helperClusterGroupsArray (:, 1 : lengthOfMatrix);
end

