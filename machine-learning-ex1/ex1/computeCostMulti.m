function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% REMEMBER: ; means to not print
% get avg summation of output value - original value
% X --> is a matrix (97x2)
% theta --> is a vector (2x1)
% y --> is a vector (97x1)

% compute hypothesis
% to do that, we use matrix multiplication
% the result is a (97x1) vector
hypothesis = X * theta;

% get difference between hypothesis and actual data
diff = hypothesis - y;

% calculate cost function in vectorieed form
J = (1 / (2 * m)) * (diff') * diff;

% =========================================================================

end
