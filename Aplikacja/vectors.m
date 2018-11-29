function [helperClusterGroupsArray] = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX)

    for wi = 1 : lengthOfMatrix - 1
        helperClusterGroupsArray(1, wi) = wi;
        if (wi < minValueX)
            continue
        else
            helperClusterGroupsArray(2, wi) = helperClusterGroupsArray(2, wi + 1);
        end
    end
    lengthOfMatrix = lengthOfMatrix - 1;
    helperClusterGroupsArray = helperClusterGroupsArray (:, 1 : lengthOfMatrix);
end

