function[nodes] = drawTree(oldClusterGroupsArray, clusterGroupsArray, nodesNumber, isMerge, nodes, isOneAdded)
  
a = sum(sum(oldClusterGroupsArray ~= clusterGroupsArray))

    if (isMerge)
        nodes(nodes == 0) = max(nodes + 1);
    else
        
        notEmptyRowsNumber = 0;
        notEmptyRows = [];
        roots = [];

        for j = 1 : length(clusterGroupsArray)   % licze ile poddrzew po tym ile niepustych wierszy
                if (~(clusterGroupsArray(j, 1) == 0))
                    notEmptyRowsNumber = notEmptyRowsNumber + 1;
                    notEmptyRows(1, end + 1) = j;    % i sprawdzam ktore wiersze sa niepuste
                end
        end

            for n = 1 : nodesNumber
                if (~(ismember(n, clusterGroupsArray(notEmptyRows, :))))
                    roots(1, end + 1) = n;
%                     if (length(roots) == notEmptyRowsNumber)
%                         break;
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
                 
%             figure
%             treeplot(nodes);
%             [x,y] = treelayout(nodes);
% 
%             for i = 1 : length(x)
%                 if (i == length(x) && max(max(clusterGroupsArray)) > i)
%                     text(x(i), y(i), num2str(max(max(clusterGroupsArray))), ...
%                             'VerticalAlignment','top', ...
%                             'HorizontalAlignment','right');
%                 else
%                     if(ismember(i, clusterGroupsArray))
%                         text(x(i), y(i), num2str(i), ...
%                         'VerticalAlignment','top', ...
%                         'HorizontalAlignment','right');
%                     end
%                 end
%             end
    