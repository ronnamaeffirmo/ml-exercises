function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% get hypothesis using sigmoid func
hypothesis = sigmoid(X * theta);

% regularized cost function in logistic regression
prediction = -y .* log(hypothesis);
actual = (1 - y) .* log(1 - hypothesis);
thetaB = theta(2:length(theta)); % you should not be regularizing the theta(1) parameter

J = (1 / m) * sum(prediction - actual) + ((lambda / (2 * m)) * sum(thetaB .^ 2));

% gradient of cost function
grad = (1 / m) * sum((hypothesis - y) .* X) + ((lambda / m) * [0; thetaB]);

% =============================================================

end
