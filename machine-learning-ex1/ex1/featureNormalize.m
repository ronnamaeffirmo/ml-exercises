function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% REMEMBER
% column 1 --> size of house in sq. ft (xˆ1)
% column 2 --> # of bedrooms  (xˆ2)
% column 3 --> price of the house (y)

% compute the mean of the feature
% returns 1x2 matrix
mu = mean(X);

% compute the standard deviation of each feature
% returns 1x2 matrix
sigma = std(X);

% number of features (m) is
m =  size(X, 2); % meaning: matrix x, how much is the # of columns

% normalized X = (orig value - mean) / standard deviation
% X_norm --> 47x2 matrix
for i=1:m,
  % get the vector of the current column or feature
  % result --> 47x1 vector
  currentColumnVector = X(:, i);

  X_norm(:, i) = (currentColumnVector - mu(i)) / sigma(i);
endfor

% ============================================================

end
