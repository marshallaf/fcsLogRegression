function [dataSet] = combinePosNeg(posData, negData)% Adds positive/negative classifier to positive and negative data matrices,% and combines the two datasets into one large dataset.% add 1 and 0 to end of positive and negative data, respectivelyposData = [posData ones(size(posData,1),1)];negData = [negData zeros(size(negData,1),1)];% combine the positive and negative setsdataSet = [posData; negData];