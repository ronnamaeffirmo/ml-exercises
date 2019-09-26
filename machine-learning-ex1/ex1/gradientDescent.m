function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    % X --> 97x2 matrix
    % theta --> 2x1 vector
    % hypothesis --> 97x1 vector
    hypothesis = X * theta;
    
    % get the difference between predicted and actual values
    % 97x1 - 97x1 --> 97x1 vector
    diff = hypothesis - y;

    % NOTE: theta(z); where z is # of row
    
    % see formula for gradient descent for linear regression
    % https://www.coursera.org/learn/machine-learning/supplement/U90DX/gradient-descent-for-linear-regression
    
    % computing theta0
    theta0 = theta(1) - alpha * (1 / m) * sum(diff);
    
    % computing theta1
    % get features xsub1 (which means all rows of column 2 of X)
    % x --> 97x1 vector
    xsub1 = X(:, 2);
    
    % REMEMBER: .* is element-by-element while * is matrix
    theta1 = theta(2) - alpha * (1 / m) * sum((diff) .* xsub1);
    
    % update theta simultaneously
    theta = [theta0; theta1];
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
