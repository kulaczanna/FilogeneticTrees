% UPGMA method
clc
clear all;
% load the matrix
A = [0, 10, 8, 2, 6, 4; 0, 0, 4, 6, 8, 2; 0, 0, 0, 10, 2, 6; 0, 0, 0, 0, 8, 4; 0, 0, 0, 0, 0, 2; 0, 0, 0, 0, 0, 0]
% A = [0, 8, 9, 7, 4; 0, 0, 4, 8, 2; 0, 0, 0, 2, 6; 0, 0, 0, 0, 2; 0, 0, 0, 0, 0]
% A = [0, 6, 5, 5; 0, 0, 9, 7; 0, 0, 0, 2; 0, 0, 0, 0]
% A = [0, 0.4, 0.35, 0.6; 0, 0, 0.45, 0.7; 0, 0, 0, 0.55; 0, 0, 0, 0];
% A=[0, 0.425, 0.575; 0, 0, 0.7; 0, 0, 0]

[sizeY, sizeX] = size(A);

for k = 1 : 1 : sizeY - 2
    % find minimum value of the matrix
    minimumValue = min(A(A>0));
    % and its index...
    [minY, minX] = find(A == minimumValue);
     minValueY=min(minY)
    [Y, X] = find(minY == minValueY);
     minValueX=minX(Y,X)
    
%     [minValueY, minValueX] = find(A == minimumValue)
%     minValueY=minValueY(1)
%     minValueX=minValueX(1)
    
    for i = 1 : 1 : sizeY-1
        %-------------------------------------
        if(i == 1)
            
            copyA=A;
            B = zeros(sizeY-1);
            
                for j = 1 : 1 : sizeY - 1
                
                    if(i == j)          
                        B (i, j) = 0   
                    elseif(i == minValueY && j == minValueX)
                            B(1, j) = (copyA(minValueY, j + 1) + copyA(minValueX, j + 1))/2
                    elseif(j > minValueY)
                            
                                if(j < minValueX)
                                    B(1, j) = (copyA(minValueY, j) + copyA(j, minValueX))/2  
                                else
                                    B(1, j) = (copyA(minValueY, j+1) + copyA(minValueX, j+1))/2
                                end
                                
                    else
                        
                        if(j < minValueX)
                            B(1, j) = (copyA(j, minValueY) + copyA(j, minValueX))/2
                        else
                            B(1, j) = (copyA(j, minValueY) + copyA(minValueX, j))/2
                        end
                        
                    end
                    
                end
                
        else
             for j = 1 : 1 : sizeY - 1
                 
                if(i == minValueY || i == minValueX)
                    B(i, j) = copyA(i + 1, j + 1)
                elseif(i >= j)
                    B(i, j) = 0
                elseif( j >= minValueX)
                    B(i, j) = copyA(i, j+1)
                else
                    B(i, j) = copyA(i, j)  
                end
                
             end
             
        end
       
    end
     %------------------------------------
    A = B
    sizeY = sizeY - 1;
    
end



