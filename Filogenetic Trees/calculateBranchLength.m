function [branchLength, minimumValue, branchLengthMatrix] = ...
    calculateBranchLength(distanceMatrix, minValueY, minValueX, branchLengthMatrix)
    
    minimumValue = distanceMatrix(minValueY, minValueX);
    branchLength = minimumValue / 2;
    branchLengthMatrix(1, end + 1) = branchLength;

end