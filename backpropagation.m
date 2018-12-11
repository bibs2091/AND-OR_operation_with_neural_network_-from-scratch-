function [w,b,the_error] =  backpropagation(input,a,w,b,y,the_error)


% this backprop function give the new weights/baises after subtracting the grediant of the cost function 
% the learning rate is 0.3

% input is the training set 
% y is the vector of outputs we want 
% the activation function is as I mentioned before is the sigmoid 


  e_prim=zeros(2,1); % e_prim is actually d(error)/d(activation)        
  a_prim=zeros(2,1); % a_prim is actually d(activation)/d(z)
  z_prim=zeros(2,1); % z_prim is actually d(z)/d(weight)
  
  
  % multiplying the three/two vectors above together gives  the d(error)/d(weight), which is the grediant 
  
  
  for i=1:size(input)(1,2)   % I used normal greadiant desent 
	 
	
	a{1}=input(:,i);
	[a,z]=feed(a,w,b);
	
	for j=1:2  %feeling the vectors
	
		e_prim(j,1)=e_prim(j,1)+error_prim(a{2}(1,1),y(1,i)); %compting d(error)/d(activation)
		
		a_prim(j,1)=a_prim(j,1)+sigmoid_prim(z{1}); %compting d(activation)/d(z)
		
		
		%a_prim(j,1)=a_prim(j,1)+1;  
		%you can use the identity activation function, and it will give the same results( for logical gates probelem only)
		
		
		z_prim(j,1)=z_prim(j,1)+ a{1}(j,1); %compting d(z)/d(weight)
		
		
	end
	
  end	
   % after we did the sum I will divide it by the number of  the training examples
   
  e_prim=e_prim ./ size(input)(1,2);
  a_prim=a_prim ./ size(input)(1,2);
  z_prim=z_prim ./ size(input)(1,2);
  
  
  b_error=e_prim(1,1) .* a_prim(1,1) ; 
  
  w_error=e_prim .* a_prim .* z_prim;

  b{1} = b{1} - (0.3 * transpose(b_error)); % .3 is the learning rate
  w{1} = w{1}-(0.3* transpose(w_error)); % .3 is the learning rate  
  
  %the_error vector used to graph the value of cost function after each iteration
  error=[the_error;Costf(input,a,w,b,y)];
  the_error=error;

end



