% UPGMA method
clc
clear all;
% load the matrjx
% A1 dzia�a ... A = [0, 9, 2, 4, 9, 10; 0, 0, 9, 6, 2, 10; 0, 0, 0, 5, 9, 10; 0, 0, 0, 0, 6, 10; 0, 0, 0, 0, 0, 10; 0, 0, 0, 0, 0, 0]
% A2 dzia�a... A = [0, 10, 8, 2, 6, 4; 0, 0, 4, 6, 8, 2; 0, 0, 0, 10, 2, 6; 0, 0, 0, 0, 8, 4; 0, 0, 0, 0, 0, 2; 0, 0, 0, 0, 0, 0]
% A3 dzia�a... A = [0, 8, 9, 7, 4; 0, 0, 4, 8, 2; 0, 0, 0, 2, 6; 0, 0, 0, 0, 2; 0, 0, 0, 0, 0]
% tu te� dzia�a jako�... A = [0, 6, 5, 5; 0, 0, 9, 7; 0, 0, 0, 2; 0, 0, 0, 0]
% A4 dzia�a A = [0, 0.4, 0.35, 0.6; 0, 0, 0.45, 0.7; 0, 0, 0, 0.55; 0, 0, 0, 0];
% A5 dzia�a A=[0, 0.425, 0.575; 0, 0, 0.7; 0, 0, 0]
A = [0, 6, 6, 2, 6, 7; 0, 0, 6, 7, 5, 4; 0, 0, 0, 7, 3, 9; 0, 0, 0, 0, 4, 6; 0, 0, 0, 0, 0, 8; 0, 0, 0, 0, 0, 0]


[sizeY, sizeX] = size(A);

for k = 1 : 1 : sizeY - 2
    % find minimum value of the matrjx
    minimumValue = min(A(A>0));
    % and jts jndex...
    [minY, minX] = find(A == minimumValue);
     minValueY=min(minY);
    [Y, X] = find(minY == minValueY);
     minValueX=minX(Y,X);
    
     % copy matrix
      copyA=A;
      B = zeros(sizeY-1);
      
    for j = 1 : 1 : sizeY-1
        %-------------------------------------
        
                for i = 1 : 1 : sizeY - 1
                
                    if(j >= i)
                        B(j, i) = 0;
                    elseif(j < minValueY)
                                %-------------------------------

                                if(i < minValueY)
                                    B(j, i) = copyA(j, i);
                                elseif(i == minValueY)
                                    B(j, i) = (copyA(j, minValueY) + copyA(j, minValueX)) / 2;
                                elseif(i > minValueY && i < minValueX)
                                    B(j, i) = copyA(j, i);
                                else
                                    B(j, i) = A(j, i+1);
                                end
                                
                                %------------------------------------
                    elseif(j == minValueY)
                                
                                %-------------------------------------
                                
                                if(i >= minValueX)
                                    B(j, i) = (copyA(minValueY, i + 1) + copyA(minValueX, i + 1)) / 2;
                                elseif(i > minValueY)
                                   B(j, i) = (copyA(minValueY, i) + copyA(i, minValueX)) / 2;
                                end
                                
                                %-----------------------------------------
                     
                    elseif(j > minValueY)
                        
                               %---------------------------
                               if(i >= minValueX)
                                   if(j < minValueX)
                                   B(j, i) = copyA(j, i + 1);
                                   else
                                   B(j, i) = copyA(j + 1, i + 1);
                                   end
                               else
                                   B(j, i) = copyA(j, i);
                               end
                               %---------------------------
                               
             end
             
        end
       
    end
     %------------------------------------
    A = B
    sizeY = sizeY - 1;
    
end



