function g = sigmoid_prim(z)
%Compute the derivative of (sigmoid of z)

g = exp(-z)./ ((1 + exp(-z))^2);


end