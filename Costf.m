function [cost] =  Costf(input,a,w,b,y)

% compute the cost function of a given input data
cost=0

for i=1:size(input)(1,2)   %for i=1 to the number of training data
	 
	
	a{1}=input(:,i) 
  
	[a,z]=feed(a,w,b)
  
   
	cost=cost + error(a{2}(1,1),y(1,i))
	
	
	
end
cost = cost /size(input)(1,2)

end