function [newDistanceMatrix] = calculateNewDistanceMatrix(minValueY, minValueX, distanceMatrix)

    lengthOfMatrix = length(distanceMatrix);
    newDistanceMatrix = zeros(lengthOfMatrix-1);
    
    for row = 1 : lengthOfMatrix - 1        
        for column = 1 : lengthOfMatrix - 1
            
                       if(row < minValueY)
                            if(column < minValueY)
                                newDistanceMatrix(row, column) = distanceMatrix(row, column);
                            elseif(column == minValueY)
                                newDistanceMatrix(row, column) = (distanceMatrix(row, minValueY) + ...
                                    distanceMatrix(row, minValueX)) / 2;
                            elseif(column > minValueY && column < minValueX)
                                newDistanceMatrix(row, column) = distanceMatrix(row, column);
                            else
                                newDistanceMatrix(row, column) = distanceMatrix(row, column + 1);
                            end

                        elseif(row == minValueY)
                            if(column >= minValueX)
                                newDistanceMatrix(row, column) = (distanceMatrix(minValueY, column + 1) + ...
                                    distanceMatrix(minValueX, column + 1)) / 2;
                            elseif(column > minValueY)
                                newDistanceMatrix(row, column) = (distanceMatrix(minValueY, column) + ...
                                    distanceMatrix(column, minValueX)) / 2;
                            end

                        elseif(row > minValueY)
                            if(column >= minValueX)
                                if(row < minValueX)
                                    newDistanceMatrix(row, column) = distanceMatrix(row, column + 1);
                                else
                                    newDistanceMatrix(row, column) = distanceMatrix(row + 1, column + 1);
                                end
                            else
                                newDistanceMatrix(row, column) = distanceMatrix(row, column);
                            end
                       end
                        
        end
    end

end