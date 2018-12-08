% function[] = drawSubTree(subNum)
    clear all
    clc
    
%     dM = loadMatrix(1);
%     clusters(dM)
  
C = [1 3 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0]
    subNum = 1;
    counter = 0;
    nrCluster = 2;
    
    for j = 1 : length(C)   % sprawdz ile poddrzew bêdzie
        for i = 1 : length(C)   % czyli sprawdz ile jest nieoustych wierszy 
            if (~(C(j, i) == 0))
                counter = counter + 1
                niepustyWiersz = j   % to trzeba zmienic jakby by³o wiecej niz 1
                break
            end
        end
    end
    
    % tu info ile wez³ów bedzie pobieramy z clusters a tam z makeClastersGroup
    nrWezlow = 3;
    
    for k = 1 : counter    % szukamy tyle 'korzeni' ile naliczylismy wierszy czyli poddrzew
        for w = 1 : nrWezlow % tu szukamy cyfry której jeszcze nie by³o do iloœci wszystkich wez³ów jakie bêd¹
            if (~(ismember(w,C(niepustyWiersz, :))))   % ¿eby znalezc numer korzenia, nie liscia z clustera
                nrKorzenia = w % jesli nie ma w niepustym wierszu to znaczy ze to korzen
            end                 % podobnie jak wyzej, trzeba zmienic hjakby by³o ponad 1
        end
    end
    
    % tworz wektor o liczbie wezlow
    nodes = zeros(1, 3);
    % wype³nij zgodnie z algorytmem
    % znowu trzeba rozszerzyc na wiecej wierszy
    for c = 1 : nrCluster  % miejsce w clusterze okreslajace indeks w nodes
        nodes(1, C(1, c)) = nrKorzenia;  % i w te miejsca wpisujemy nrKorzenia = nrRodzica
    end
    % a w inne 0, na razie...
    nodes(1, nrKorzenia) = 0
    
    
    %%
    
    switch subNum
        case 1   
            nodes1 = [2 0 2];
            treeplot(nodes1);
            [x,y] = treelayout(nodes1);

            for i = 1 : length(x)
                text(x(i), y(i), num2str(i), 'VerticalAlignment','top','HorizontalAlignment','right');
            end
            
%             bd = [.1 .2 .3 .3 .4 ]';
%             b = [1 2; 3 4; 5 6; 7 8;9 10];
%             t = phytree(b,bd);  
%             view(t)
      

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
% end