clear all
clc

% dM = loadMatrix(1);
% clusters(dM)

figure
nodes1 = [2 0 2];
treeplot(nodes1)
[x,y] = treelayout(nodes1)

for i = 1 : length(x)
    text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right')
end

figure
nodes2 = [4 6 4 0 6 0];
treeplot(nodes2)
[x,y] = treelayout(nodes2)

for i = 1 : length(x)
    text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right')
end

figure
nodes3 = [6 7 6 8 7 8 0 0];
treeplot(nodes3)
[x,y] = treelayout(nodes3)

for i = 1 : length(x)
    text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right')
end

figure
nodes4 = [6 7 6 8 7 8 9 9 0];
treeplot(nodes4)
[x,y] = treelayout(nodes4)

for i = 1 : length(x)
    text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right')
end

figure
nodes5 = [7 8 7 9 8 11 9 10 10 11 0];
treeplot(nodes5)
[x,y] = treelayout(nodes5)

for i = 1 : length(x)
    text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right')
end


% %% jak ³adnie sformatowac... :) + treelayout
% x = x'
% y = y'
% name1 = cellstr(num2str((1:count)'))
% name2 = ['1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '10'; '11']
% text(x(:,1), y(:,1), name1, 'VerticalAlignment','bottom','HorizontalAlignment','right')
% title({'Level Lines'},'FontSize',12,'FontName','Times New Roman')