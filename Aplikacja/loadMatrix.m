function[distanceMatrix] = loadMatrix(A)

    distanceMatrix = [0, 9, 2, 4, 9, 10;
                    0, 0, 9, 6, 2, 10; 
                    0, 0, 0, 5, 9, 10;
                    0, 0, 0, 0, 6, 10;
                    0, 0, 0, 0, 0, 10;
                    0, 0, 0, 0, 0, 0]

end



% B = [0, 9, 2, 4, 9, 10; 0, 0, 9, 6, 2, 10; 0, 0, 0, 5, 9, 10; 0, 0, 0, 0, 6, 10; 0, 0, 0, 0, 0, 10; 0, 0, 0, 0, 0, 0]
% B = [0, 10, 8, 2, 6, 4; 0, 0, 4, 6, 8, 2; 0, 0, 0, 10, 2, 6; 0, 0, 0, 0, 8, 4; 0, 0, 0, 0, 0, 2; 0, 0, 0, 0, 0, 0]
% B = [0, 8, 9, 7, 4; 0, 0, 4, 8, 2; 0, 0, 0, 2, 6; 0, 0, 0, 0, 2; 0, 0, 0, 0, 0]
% B = [0, 6, 5, 5; 0, 0, 9, 7; 0, 0, 0, 2; 0, 0, 0, 0]
% B = [0, 0.4, 0.35, 0.6; 0, 0, 0.45, 0.7; 0, 0, 0, 0.55; 0, 0, 0, 0];
% B =[0, 0.425, 0.575; 0, 0, 0.7; 0, 0, 0]