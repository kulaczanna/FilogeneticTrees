function [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX)
    
    minimumValue = distanceMatrix(minValueY, minValueX);
    branchLength = minimumValue / 2;

end