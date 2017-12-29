function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

j = 1;
k = 1;
x_p = ones(length(y),1);
x_n = ones(length(y),1);
for i=1:size(y,1)
    if y(i) == 1
        x_p(j,1:2) = X(i,1:2);
        j=j+1;
    else
        x_n(k,[1 2]) = X(i,[1 2]);
        k=k+1;
    end
end
x_p = x_p(1:(j-1),1:2);
x_n = x_n(1:(k-1),1:2);
plot(x_p(:,1),x_p(:,2),'k+');
plot(x_n(:,1),x_n(:,2),'ko');









% =========================================================================



hold off;

end
