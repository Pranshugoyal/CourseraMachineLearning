function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
[m, n] = size(X);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
% X = 5000 X 400
% Theta1 = 25 X 401
% Theta2 = 10 X26


% a1 = 5000 X 401; Add a coloumn to X, to make it a1
a1 = [ones(1, m)' X];

a2 = sigmoid(Theta1*a1')';
% a2 = 5000 X 25; Add a column to a2
a2 = [ones(1, size(a2,1))' a2];

a3 = sigmoid(Theta2*a2')';
% a3 = 5000 X 10

% => Output from each of the classifier is a probablity of the example belonging to that class
% => Each row of a3 represents probablity vector of an example belonging to different classes 
% => Index of the max element of each row means the highest probablity of the example case being that index digit and 10 => 0

% => Fill that out in vector p
for i = 1:m
    [w, p(i)] = max(a3(i,:));
    if p(i) == 10
        p(i) = 0;
    end
end






% =========================================================================


end