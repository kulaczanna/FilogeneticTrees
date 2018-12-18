function[] = signLeafsAsSequencesNumbers(subNum, cellNodes, cellLeafs, cellSequences) 

[x,y] = treelayout(cellNodes{1, subNum});
     
     for p = 1 : length(cellLeafs{1, subNum})
         text(x(cellLeafs{1, subNum}(p)), y(cellLeafs{1, subNum}(p)), ...
             num2str(cellSequences{1, subNum}(p)), 'VerticalAlignment','top', ...
             'HorizontalAlignment','right');
     end
end