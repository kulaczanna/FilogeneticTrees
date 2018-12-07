% nodes(1) = 0;     % Root node
% %nodes(2) and nodes(8) are children of nodes(1), so set these elements of the input vector to 1:
% 
% nodes(2) = 1;     nodes(8) = 1;
% %nodes(5:7) are children of nodes(4), so set these elements to 4:
% 
% nodes(5) = 4;     nodes(6) = 4;     nodes(7) = 4;
%Continue in this manner until each element of the vector identifies its parent. For the plot shown above, the nodes vector now looks like this:

nodes = [0 9 7 8 9 1 8 10 10 1 7];
%Now call treeplot to generate the plot:

treeplot(nodes)