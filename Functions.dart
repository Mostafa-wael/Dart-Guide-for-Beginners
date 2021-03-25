/*
? Functions:
  Functions are the building blocks of readable, maintainable, and reusable code.
  A function is a set of statements to perform a specific task.
  Functions organize the program into logical blocks of code. 
  Once defined, functions may be called to access code. 
  This makes the code reusable.
  Moreover, functions make it easy to read and maintain the program’s code.

* Function declaration tells the compiler about a function's name, return type, and parameters. 
* Function definition provides the actual body of the function.
void main() { 
   sayHello(); 
   print(getNum()); 
}  
void sayHello()
{
  print("hello"); 
}
int getNum()
{
  return 123;
}      

Output:
hello 
123 
-------------------------------
? Optional Parameters
Optional parameters can be used when arguments need not be  passed for a function’s execution.
A parameter can be marked optional by appending a question mark to its name. The optional parameter should be set as the last argument in a function.
Note − All required parameters in a function must occur before optional parameters.

We have three types of optional parameters in Dart −
*1.	Optional Positional Parameter
To specify optional positional parameters, use square [] brackets.
If an optional parameter is not passed a value, it is set to NULL.

void main() { 
   test_param(123); 
}  
test_param(n,[p1]) { 
   print(n); 
   print(p1); 
} 
Output:
123 
null 
---------
*2.	Optional named parameter
Unlike positional parameters, the parameter''s name must be specified while the value is being passed.
Curly brace {} can be used to specify optional named parameters.

void main() { 
   test_param(123); 
   test_param(123,p1:'hello'); 
   test_param(123,p2:'hello',p1:'world'); 
}  
test_param(n,{p1,p2}) { 
   print(n); 
   print(p1); 
}  
Output:
123 
null 

123 
hello 

123 
world
---------
*3	Optional Parameters with Default Values
Function parameters can also be assigned values by default. However, such parameters can also be explicitly passed values.

void main() { 
   test_param(123); 
}  
void test_param(n1,{p1:12}) { 
   print(n1); 
   print(p1); 
}   
Output:
123 
12 
--------------------------------
?Lambda Functions
These functions are also called as Arrow functions.
*[return_type]function_name(parameters)=>expression;

void main() { 
   sayHello(); 
   print(getNum()); 
}  
sayHello()=>print("hello"); 
int getNum()=>123;      

Output:
hello 
123 

*/
