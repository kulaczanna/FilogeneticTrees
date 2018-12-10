function[] = drawTree(subNum)
  
    C = [1 3 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
    licznik = 0;
    nrCluster = 2;
    
    for j = 1 : length(C)   % liczba poddrzew
        for i = 1 : length(C)
            if (~(C(j, i) == 0))
                licznik = licznik + 1;
                niepustyWiersz = j;
                break
            end
        end
    end
    
    % 
    liczbaWezlow = 3;
    
    for k = 1 : licznik    % nr 'korzeni'
        for w = 1 : liczbaWezlow % liczba inna ni¿ nr sekwencji
            if (~(ismember(w,C(niepustyWiersz, :))))
                nrKorzenia = w;
            end
        end
    end
    
    nodes = zeros(1, liczbaWezlow);
    for c = 1 : nrCluster
        nodes(1, C(1, c)) = nrKorzenia;
    end
    nodes(1, nrKorzenia) = 0;
    
    
    switch subNum
        case 1   
%             nodes1 = [2 0 2];
            treeplot(nodes);
            [x,y] = treelayout(nodes);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 2
            nodes2 = [4 6 4 0 6 0];
            treeplot(nodes2);
            [x,y] = treelayout(nodes2);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 3
            nodes3 = [6 7 6 8 7 8 0 0];
            treeplot(nodes3);
            [x,y] = treelayout(nodes3);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 4
            nodes4 = [6 7 6 8 7 8 9 9 0];
            treeplot(nodes4);
            [x,y] = treelayout(nodes4);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end

        case 5
            nodes5 = [7 8 7 9 8 11 9 10 10 11 0];
            treeplot(nodes5);
            [x,y] = treelayout(nodes5);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end
    end
 end