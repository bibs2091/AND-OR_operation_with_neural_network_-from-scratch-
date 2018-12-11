function [a,w,b] = init(NN)


%this is a standard function can creat/initialize the neurons,weight,biases matrices of any NN given (any number of hidden layers/neurons)
%and it retruns the value of a,w,b
% Basically a "cell" is an array of arrays


a=cell(1,size(NN)(1,2));   % the a cell contain the activation/input_neurons values


for l = 1 : size(NN)(1,2)       %filling " a " cell 
     a{l} = ones(NN(1,l),1) ;   % For nx1 arrays.  
 end
 
 
w=cell(1,(size(NN)(1,2))-1); % the w cell contain the weights  values

for l = 1 : ((size(NN)(1,2))-1)        %filling " w " cell 
     w{l} = ones(NN(1,l+1),NN(1,l)) ;   % For nx1 arrays.
 end
 
 
 
b=cell(1,(size(NN)(1,2))-1);    % the b cell contain the biases  values


for l = 1 : ((size(NN)(1,2))-1)  %filling " b " cell 
     b{l} = ones(NN(1,l+1),1) ;   % For nx1 arrays.
end