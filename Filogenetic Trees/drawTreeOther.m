function[nodes, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac] = drawTreeOther(oldClusterGroupsArray, clusterGroupsArray, ...
    nodesNumber, isMerge, nodes, isOneAdded, changedRowNumber, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac, i)
  
a = sum(sum(oldClusterGroupsArray ~= clusterGroupsArray));

        notEmptyRowsNumber = 0;
        notEmptyRows = [];

        for j = 1 : length(clusterGroupsArray)   % licze ile poddrzew po tym ile niepustych wierszy
                if (~(clusterGroupsArray(j, 1) == 0))
                    notEmptyRowsNumber = notEmptyRowsNumber + 1;
                    notEmptyRows(1, end + 1) = j;    % i sprawdzam ktore wiersze sa niepuste
                end
        end
        
        stareNumeryWezlow = numeryWezlow;
        for x =  length(nodes) + 1 : nodesNumber
            numeryWezlow(changedRowNumber, end + 1) = x;
        end
        

    if (isMerge)
        
       takiTamWektor = stareNumeryWezlow(changedRowNumber, :);
       wek = takiTamWektor(takiTamWektor ~= 0);
       tuSzukaj = nodes(wek);
       zeroPos = find(tuSzukaj == 0);
       zeroPos = wek(zeroPos);
       nodes(zeroPos) = max(nodes + 1);
        
    elseif (a == 2)
        
        for c = length(nodes) + 1 : nodesNumber - 1
            nodes(1, c) = nodesNumber;
        end
        
        if(i == 1)
            ktoryLiscPodpisac = [1, 2];
        else
            ktoryLiscPodpisac(1, end + 1) = max(ktoryLiscPodpisac) + 2;
            ktoryLiscPodpisac(1, end + 1) = max(ktoryLiscPodpisac) + 1;
        end
         
    elseif (a == 1)
        
       takiTamWektor = stareNumeryWezlow(changedRowNumber, :);
       wek = takiTamWektor(takiTamWektor ~= 0);
       tuSzukaj = nodes(wek);
       zeroPos = find(tuSzukaj == 0);
       zeroPos = wek(zeroPos);
       zeroPos = zeroPos(changedRowNumber);
       newNodeNumber = max(nodes) + 2;
       nodes(1, zeroPos) = newNodeNumber;
       nodes(1, length(nodes) + 1) = newNodeNumber;
       
       ktoryLiscPodpisac(1, end + 1) = max(ktoryLiscPodpisac) + 2;
        
    end

     for h =  length(nodes) + 1 : nodesNumber
            nodes(1, h) = 0;
     end

%     treeplot(nodes);
%     [x,y] = treelayout(nodes);
%     for i = 1 : length(ktoryLiscPodpisac)
%         
%             text(x(ktoryLiscPodpisac(i)), y(ktoryLiscPodpisac(i)), num2str(ktoraSekwencjePodpisac(i)), ...
%                 'VerticalAlignment','top', ...
%                 'HorizontalAlignment','right');
%         
%     end
    
end
   
    