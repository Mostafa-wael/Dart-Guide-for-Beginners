void main() {
//? Operators:

  {
    // -----------------------------------
    dynamic x = 2, y = 3, z = 4;
    // -----------------------------------

    // * 1.Arithmetic Operators
    // (+) Add
    // (-) Subtract
    // (-expr) Unary minus, also known as negation (reverse the sign of the expression)
    print(-x); // -2
    // (*)  Multiply
    // (/)  Divide
    print(z / y); // 1.3333333333333333
    // (~/) Divide, returning an integer result
    print(z ~/ y); // 1
    // (%)  Get the remainder of an integer division (modulo)
    print(z % x); // 0
    print(z % y); // 1
    print(z % z); // 0
    // (++) Increment
    print(z++); // 4
    print(z); // 5
    print(++z); // 6
    print(z); // 6
    // (--) Decrement
    print(z--); // 6
    print(z); // 5
    print(--z); // 4
    print(z); // 4
    // -----------------------------------

    // * 2.Equality and Relational Operators
    // (>)	 Greater than	(A > B) is False
    // (<)	 Lesser than	(A < B) is True
    // (>=) Greater than or equal to	(A >= B) is False
    // (<=) Lesser than or equal to	(A <= B) is True
    // (==) Equality	(A==B) is False
    // (!=) Not equal	(A!=B) is True
    // -----------------------------------

    // * 3.Type test Operators
    // (is)	 True if the object has the specified type
    // (is!) False if the object has the specified type
    int n = 2;
    print(n is int); // output -> true
    // -----------------------------------

    // * 4.Bitwise Operators
    // Bitwise AND	(a & b)	Returns a one in each bit position for which the corresponding bits of both operands are ones.
    // Bitwise OR	(a | b)	Returns a one in each bit position for which the corresponding bits of either or both operands are ones.
    // Bitwise XOR	(a ^ b)	Returns a one in each bit position for which the corresponding bits of either but not both operands are ones.

    // Bitwise NOT	(~ a)	Inverts the bits of its operand.
    // Left shift	(a ≪ b) Shifts a in binary representation b (< 32) bits to the left, shifting in zeroes from the right.
    // Signpropagating right shift	(a ≫ b)	Shifts a in binary representation b (< 32) bits to the right, discarding bits shifted off.
    // -----------------------------------

    // * 5.Assignment Operators
    // (=) Simple Assignment
    // Assigns values from the right side operand to the left side operand
    x = y + z;
    print(x); // 7
    // (+=) Add and Assignment
    // It adds the right operand to the left operand and assigns the result to the left operand.
    z += 1;
    print(z); // 5
    // (─=) Subtract and Assignment
    // It subtracts the right operand from the left operand and assigns the result to the left operand.
    z -= 1;
    print(z); // 4

    // (*=) Multiply and Assignment
    // It multiplies the right operand with the left operand and assigns the result to the left operand.
    z *= 2;
    print(z); // 8

    // (/=) Divide and Assignment
    // It divides the left operand with the right operand and assigns the result to the left operand.
    z /= 2;
    print(z); // 4

    // (??=)
    // Assign the value only if the variable is null
    // !discussed in the Null Safety section
    // -----------------------------------

    // * 6.Logical Operators
    // (&&) And − The operator returns true only if all the expressions specified return true
    print((5 > 4) && (3 > 4)); // false

    // (||) OR − The operator returns true if at least one of the expressions specified return true
    print((5 > 4) || (3 > 4)); // true

    // (!)	 NOT − The operator returns the inverse of the expression’s result.
    print(!((5 > 4) && (3 > 4))); // true

  }

// ?Conditions
  {
    // -----------------------------------
    var n = 5, m = 6;
    // -----------------------------------

    //* 1. if statement
    // An if statement consists of a Boolean expression followed by one or more statements.
    if (n <= 6) print("n is less than or equal 6"); // this line will be printed

    //* 2.	If-Else Statement
    // An if can be followed by an optional else block. The else block will execute if the Boolean expression tested by the if block evaluates to false.
    if (m <= 5)
      print("m is less than or equal 5");
    else
      print("m is greater than 5"); // this line will be printed

    //* 3.	else-if Ladder
    // The else…if ladder is useful to test multiple conditions. Following is the syntax of the same.
    if (m <= 5 && n <= 5)
      print("both m and n are less than or equal 5");
    else if (m <= 5)
      print("m is less than or equal 5 and n is greater than 5");
    else
      print(
          "n is less than or equal 5 and m is greater than 5"); // this line will be printed
    //* 4.	switch…case Statement
    // The switch statement evaluates an expression, matches the expression’s value to a case clause and executes the statements associated with that case.
    var grade = "A";
    switch (grade) {
      case "A":
        {
          print("Excellent"); // this line will be printed
        }
        break;

      case "B":
        {
          print("Good");
        }
        break;

      case "C":
        {
          print("Fair");
        }
        break;

      case "D":
        {
          print("Poor");
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }
//  ?Loops
  {
    // *Definite loops:
    // *1.	for loop
    // The for loop is an implementation of a definite loop.
    // The for loop executes the code block for a specified number of times.
    // It can be used to iterate over a fixed set of values, such as an array
    for (var i = 5; i >= 0; i--) {
      print(i); // print numbers from 5 to 0
    }

    // *2.	for…in Loop
    // The for...in loop is used to loop through an object 's 'properties.
    var obj = [12, 13, 14];
    for (var prop in obj) {
      print(prop);
    }

    // *Indefinte loop:
    // *1.	while Loop
    // The while loop executes the instructions each time the condition specified evaluates to true.
    // In other words, the loop evaluates the condition before the block of code is executed.
    var i = 0;
    while (i < 5) {
      print(i); // print numbers from 0 to 4
      i++;
    }
    //
    while (i < 5) {
      print(i); // print numbers from 0 to 4
      i++;
    }

    // *2.	do…while Loop
    // The do…while loop is similar to the while loop except that the do...while loop doesn’t evaluate the condition for the first time the loop executes.
    var j = 0;
    do {
      print(j); // print numbers from 0 to 4
      j++;
    } while (j < 5);

    do {
      print(j); // print number 5
      j++;
    } while (j < 5);
  }
//?  Control Statements
  {
    //* 1	break Statement
    // The break statement is used to take the control out of a construct. Using break in a loop causes the program to exit the loop. Following is an example of the break statement.
    for (int i = 0; i < 4; i++) // prints 0, 1
    {
      if (i == 2) {
        break;
      }
      print(i);
    }
    //* 2	continue Statement
    // The continue statement skips the subsequent statements in the current iteration and takes the control back to the beginning of the loop.
    for (int i = 0; i < 4; i++) // prints 0, 1, 3
    {
      if (i == 2) {
        continue;
      }
      print(i);
    }
    //* 3 labels:
    //  A label is simply an identifier followed by a colon (:) that is applied to a statement or a block of code.
    //  A label can be used with break and continue to control the flow more precisely.
    //  Line breaks are not allowed between the ‘continue’ or ‘break’ statement and its label name.
    //  Also, there should not be any other statement in between a label name and an associated loop.

    L1: // Definig the label
    for (int i = 0; i < 3; i++) {
      if (i < 2) {
        print("You are inside the loop L1");
        continue L1; // Continue with label
        break L1; // will break out from the loop of L1
      }
      print("You are still inside the loop");
    }
    // Output:

    // You are inside the loop L1
    // You are inside the loop L1
    // You are still inside the loop
  }
  //? Null Safety:
  {
    // Dart offers some handy operators for dealing with values that might be null.
    //*Null-aware operators
    // (??=)
    // Assigns a value to a variable only if that variable is currently null

    int? a; // the default is null
    a ??= 3;
    print(a); // output ->  3

    a ??= 5;
    print(a); // output ->  3 as a now is 3 not null

    // (??)
    // returns the value on the right unless the value on the left is not null

    print(1 ?? 3); // output -> 1
    print(null ?? 12); // output -> 12
  }
  //? Conditional Expressions
  {
    // Dart has two operators that let you evaluate expressions that might otherwise require ifelse statements −

    //* condition ? expr1 : expr2
    // If condition is true, then the expression evaluates expr1 (and returns its value); otherwise, it evaluates and returns the value of expr2.
    {
      var a = 10;
      var res =
          a > 12 ? "value greater than 10" : "value lesser than or equal to 10";
      print(res); // value lesser than or equal to 10
    }
    //* expr1 ?? expr2
    // If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2
    {
      var a = null;
      var b = 12;
      var res = a ?? b;
      print(res); // 12
    }
  }
}
