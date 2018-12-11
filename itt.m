function [w,b,the_error] =  itt(it,input,a,w,b,y)

 % This function return the value of w,b after it iteration 

 % the_error vector used to graph the value of cost function after each iteration


 the_error=[]; %initialzing
 
 for i=1:it
	[w,b,the_error]=backpropagation(input,a,w,b,y,the_error)
  end	
  
  
  end
  