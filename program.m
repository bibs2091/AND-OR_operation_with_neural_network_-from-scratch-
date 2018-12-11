function program()

% the program() create a neural network of 1 input layer and 1 output layer, to do the function of AND/OR logical operation

NN=[2,1] %each column represent the number of neurons in that layer


[a,w,b]=init(NN);


input=[1,1,0,0;1,0,1,0];
y=[1,0,0,0]; %let's start with AND operation
number_iteration=30;
[w,b,the_error] =  itt(number_iteration,input,a,w,b,y);

plot(the_error)%plotting the cost function over the 35 iterations

for i=1:size(input)(1,2)
	disp("AND operation : ");
	disp("input is : ");
	a{1}=input(:,i);
	disp(input(:,i));
	[a,z]=feed(a,w,b);
	disp("the output is : ");
	disp(a{2});
    
end

y=[1,1,1,0]; %the OR operation
[w,b,the_error] =  itt(number_iteration,input,a,w,b,y);

for i=1:size(input)(1,2)
	disp("OR operation : ");
	disp("input is : ");
	a{1}=input(:,i);
	disp(input(:,i));
	[a,z]=feed(a,w,b);
	disp("the output is : ");
	disp(a{2});
    
end



end
