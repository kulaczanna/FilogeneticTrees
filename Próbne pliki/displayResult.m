function [] = displayResult(clusterGroupsArray, i, minValueY, minValueX, branchLength, v)

    switch v
        case 1
            fprintf('The %d branch is: %d - %d. The Length is: %f. \n', i, ...
                minValueY, minValueX, branchLength);
        case 2
            fprintf('The %d branch is: %d - . The Length is: %f. \n', i, ...
                minValueY, branchLength);
        case 3
            fprintf('The %d branch is: %d - . The Length is: %f. \n', i, ...
                minValueX, branchLength);
        case 4 
             fprintf('The %d branch is merge of: %d and %d. The Length is: %f. \n', i, ... 
                minValueY, minValueX, branchLength);
    end
    
end
