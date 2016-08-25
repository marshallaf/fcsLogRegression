function theta = logRegression(X, y, lambda)% runs logistic regression on input features and target% X is a observation feature matrix with size [m, n]% y is a target output vector with size [m, 1]% theta is a optimal theta vector for this model with size [n, 1]numFeatures = size(X, 2);initialTheta = zeros(numFeatures, 1);% options for fmincg% GradObj indicates that the costFunction returns a gradient as well as the costFunction% MaxIter indicates the maximum number of iterations fmincg will go through before stoppingoptions = optimset('GradObj', 'on', 'MaxIter', '100');% find optimal solution for theta using minimization function fmincg()theta = fmincg(@(t)(costFunctionLog(X, y, t, lambda)), initialTheta, options);