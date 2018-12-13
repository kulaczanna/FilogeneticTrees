function[nodes] = drawTree(subNum, oldClusterGroupsArray, clusterGroupsArray, nodesNumber, isMerge, nodes)
  
a = sum(sum(oldClusterGroupsArray ~= clusterGroupsArray))
    if (isMerge)
        nodes(nodes == 0) = max(nodes + 1);
    else
        notEmptyRowsNumber = 0;
        notEmptyRows = [];
        roots = [];

        for j = 1 : length(clusterGroupsArray)
                if (~(clusterGroupsArray(j, 1) == 0))
                    notEmptyRowsNumber = notEmptyRowsNumber + 1;
                    notEmptyRows(1, end + 1) = j;
                end
        end

            for w = 1 : nodesNumber
                if (~(ismember(w, clusterGroupsArray(notEmptyRows, :))))
                    roots(1, end + 1) = w;
%                     if (length(roots) == notEmptyRowsNumber)
%                         break;   % potrzebne?
%                     end
                end
            end

        for c = 1 : length(clusterGroupsArray)
            if (ismember(c, notEmptyRows))
                for x = 1 : length(clusterGroupsArray)
                    if (clusterGroupsArray(c, x) ~= 0)
                        if (x <= 2)
                            if (clusterGroupsArray(c, x) <= nodesNumber)
                                nodes(1, clusterGroupsArray(c, x)) = roots(1, c);
                            else
                                nodes(1, nodesNumber) = roots(1, c);
                            end
                        else
                            nodes(1, clusterGroupsArray(c, x)) = max(roots);
                            nodes(1, roots(1, c)) = max(roots);
                        end
                    end
                end
            end
        end    
    end
    
    for h =  length(nodes) + 1 : nodesNumber
                nodes(1, h) = 0;
    end
        nodes
    
    switch subNum
        case 1   
            
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

            for i = 1 : length(x)
                if (i == length(x) && max(max(clusterGroupsArray)) > i)
                    text(x(i), y(i), num2str(max(max(clusterGroupsArray))), ...
                            'VerticalAlignment','top', ...
                            'HorizontalAlignment','right');
                else
                    if(ismember(i, clusterGroupsArray))
                        text(x(i), y(i), num2str(i), ...
                        'VerticalAlignment','top', ...
                        'HorizontalAlignment','right');
                    end
                end
                
            end

        case 2
%             nodes2 = [4 6 4 0 6 0];
            
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

            for i = 1 : length(x)
                if (ismember(i, clusterGroupsArray))
                    text(x(i), y(i), num2str(i), ...
                        'VerticalAlignment','top', ...
                        'HorizontalAlignment','right');
                end
            end

        case 3
%             nodes3 = [6 7 6 8 7 8 0 0];
            
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

             for i = 1 : length(x)
                if (ismember(i, clusterGroupsArray))
                    text(x(i), y(i), num2str(i), ...
                        'VerticalAlignment','top', ...
                        'HorizontalAlignment','right');
                end
            end

        case 4
%             nodes4 = [6 7 6 8 7 8 9 9 0];
%             nodes = [7 8 7 9 8 10 9 0 10 0]
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

             for i = 1 : length(x)
                if (ismember(i, clusterGroupsArray))
                    text(x(i), y(i), num2str(i), ...
                        'VerticalAlignment','top', ...
                        'HorizontalAlignment','right');
                end
            end

        case 5
%             nodes5 = [7 8 7 9 8 11 9 10 10 11 0];
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

             for i = 1 : length(x)
                if (ismember(i, clusterGroupsArray))
                    text(x(i), y(i), num2str(i), ...
                        'VerticalAlignment','top', ...
                        'HorizontalAlignment','right');
                end
            end
    end
 end