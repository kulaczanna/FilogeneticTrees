function [lengthOfDistanceMatrix] = getMatrixSize(distanceMatrix)

    [sizeY, sizeX] = size(distanceMatrix);
    lengthOfDistanceMatrix = sizeY;

end