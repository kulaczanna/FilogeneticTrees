function[] = drawTree(subNum, clusterGroupsArray, nodesNumber)
  
    licznik = 0;
    nrCluster = 2;
    notEmptyRows = [];
    
    for j = 1 : length(clusterGroupsArray)   % liczba poddrzew
%         for i = 1 : length(clusterGroupsArray)
            if (~(clusterGroupsArray(j, 1) == 0))
                licznik = licznik + 1;
                notEmptyRows(1, end + 1) = j;
                break
            end
%         end
    end
    
    for k = 1 : licznik    % nr 'korzeni'
        for w = 1 : nodesNumber % liczba inna ni¿ nr sekwencji
            if (~(ismember(w, clusterGroupsArray(notEmptyRows, :))))
                nrKorzenia = w;
            end
        end
    end
    
    nodes = zeros(1, nodesNumber);
    for c = 1 : nrCluster
        nodes(1, clusterGroupsArray(1, c)) = nrKorzenia;
    end
    nodes(1, nrKorzenia) = 0;
    
    
    switch subNum
        case 1   
%             nodes1 = [2 0 2];
            
            figure
            treeplot(nodes);
            [x,y] = treelayout(nodes);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 2
            nodes2 = [4 6 4 0 6 0];
            
            figure
            treeplot(nodes2);
            [x,y] = treelayout(nodes2);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 3
            nodes3 = [6 7 6 8 7 8 0 0];
            
            figure
            treeplot(nodes3);
            [x,y] = treelayout(nodes3);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 4
            nodes4 = [6 7 6 8 7 8 9 9 0];
            
            figure
            treeplot(nodes4);
            [x,y] = treelayout(nodes4);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 5
            nodes5 = [7 8 7 9 8 11 9 10 10 11 0];
            
            figure
            treeplot(nodes5);
            [x,y] = treelayout(nodes5);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end
    end
 end