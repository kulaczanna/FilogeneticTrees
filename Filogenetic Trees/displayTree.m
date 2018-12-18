function [] = displayTree(subNum, cellNodes, cellLeafs, cellSequences)
    
     treeplot(cellNodes{1, subNum});
     signLeafsAsSequencesNumbers(subNum, cellNodes, cellLeafs, cellSequences);

end