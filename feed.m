function [a,z] = feed(a,w,b)


%the feed function represent the forward_propagation, the value of neurons(the input and the activation of neurons), weights, biases are the entries
%the new value of 'a' and the z value are returned



s=size(a)(1,2) % how many layer we have


% 'z' is actualy a cell which contain the values of the input of a neuron before applying the activation function (sigmoid in this case) to it 

z=cell(1,s-1) %creat z cell:


for m=1 : s-1   % I'v actualy forgot what this this loop about x)
	z{m}=ones(size(a{m+1})(1,1),1)
 end

for k=2 : s    % loop for changing the values of a and z 

     
	Z=((w{k-1})*(a{k-1}))+b{k-1} % applying  the formulla   
	z{k-1}=Z


   
  
  if(sigmoid(Z)  >0.5)  % the threshold is 0.5
    Z=1
   else 
    Z=0
   endif
   
    a{k}=Z 
	
 end
 
 
 
end