function [train, validate, test] = splitPosNeg(posData, negData)[posTrain, temp] = splitData(posData, .6);[posVal, posTest] = splitData(temp, .5);[negTrain, temp] = splitData(negData, .6);[negVal, negTest] = splitData(temp, .5);train = combinePosNeg(posTrain, negTrain);validate = combinePosNeg(posVal, negVal);test = combinePosNeg(posTest, negTest);end