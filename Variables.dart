/*

* Identifiers in Dart
when we create a variable in dart, its name is called an identifiers 
Identifiers are names given to elements in a program like variables, functions etc.

*Do we have to follow specific rules ?
?Identifiers can include both, characters and digits. 
?They must be unique.
?Identifiers are case-sensitive.
?Identifiers cannot contain spaces.
!the identifier cannot begin with a digit.
!Identifiers cannot include special symbols 
  ?except for underscore (_) or a dollar sign ($).
!Identifiers cannot be keywords.

*Keywords in Dart
Keywords have a special meaning in the context of languages: 

? abstract 	continue	false	new	this
? as 	default	final	null	throw
? assert	deferred 	finally	operator 	true
? async 	do	for	part '.'	try
? async* 	dynamic 	get 	rethrow	typedef 
? await 	else	if	return	var
? break	enum	implements 	set 	void
? case	export '.'	import '.'	static 	while
? catch	external 	in	super	with
? class	extends	is	switch	yield 
? const	factory 	library 	sync* 	yield* 

 */
void main() {
//? Var keyword:
  {
    // A variable must be declared before it is used.
    // to declare a variabel we use the var keyword.
    //*syntax:
    var name1 = 'Mostafa';
    // All variables in dart store a reference to the value rather than containing the value.
    // The variable called name contains a reference to a String object with a value of “Smith”.
    // Dart is a statically typed language, which means we can't change the type of the variable after declaring it.
    //!  name1 = 3; //this line of code will result in an error
  }
//? ensuring Type checking:
  {
    // Dart supports type-checking by prefixing the variable name with the data type.
    // Type-checking ensures that a variable holds only data specific to a data type.
    //*syntax:
    String name2 = 'Wael';
    int num = 10;
    //!   var String  name1 = 'Mostafa'; //this line of code will result in an error
    //!   String var  name1 = 'Mostafa'; //this line of code will result in an error
    // All uninitialized variables have an initial value of null.
    // This is because Dart considers all values as objects i.e. Dart is object-oriented language.
    int num;
    print(num); // output -> Null
  }

//? The dynamic keyword
  {
    // Dart is an optionally typed language.
    // The dynamic keyword can also be used as a type annotation explicitly.
    // Variables declared without a static type are implicitly declared as dynamic.
    // Variables can be also declared using the dynamic keyword in place of the var keyword.
    dynamic name1 = 'Mostafa';
    name1 = 3;
  }

//? Final and Const

  {
    //*Const:
    // we use the word const only with variables that are known at compile time and won't change alnog the program
    const pi = 3.14;
    const area = pi * 12 * 12;
    print("The output is ${area}"); // The output is 452.15999999999997
    // we can add a type, though being reduntant as we are not going to change it.
    const int d = 0;

    //*Final:
    // we use the word final only with variables that aren't necessarily known at compile time and won't change alnog the program
    final t = DateTime.now();
    print(t);

    // If the value you have is computed at runtime (new DateTime.now(), for example), you can not use a const for it.
    // However, if the value is known at compile time (const a = 1;), then you should use const over final.
    // final should be used over const if you do not know the value at compile time, and it will be calculated/grabbed at runtime.
    // If you want an HTTP response that cannot be changed, if you want to get something from a database, or if you want to read from a local file, use final.
    // Anything that isn't known at compile time should be final over const.
    // With all of that being said, both const and final cannot be reassigned.

    // If you have a const collection, everything inside of that is in const.
    const a = 0;
    const b = 1;
    const c = 2;
    const col1 = [
      a,
      b,
      c
    ]; // if a or b are not const, this line would result in an error
    print(col1);
    // If you have a final collection, everything inside of that is not final.
    var x = 0;
    const y = 1;
    final z = 2;
    final col2 = [x, y, z]; // the collection can hold non final variables
    print(col2);
  }

//? Numbers:

  {
    //* Integers
    //  Integer values represent non-fractional values, i.e., numeric values without a decimal point. For example, the value "10" is an integer.
    //  Integer literals are represented using the int keyword.
    int num1 = 10;

    //* Doubles
    // Dart also supports fractional numeric values i.e. values with decimal points.
    //  The Double data type in Dart represents a 64-bit (double-precision) floating-point number. For example, the value "10.10".
    //  The keyword double is used to represent floating point literals.
    double num2 = 10.50;

    //! int num3 = 10.5; // this line of code will result in an error

    //*Parsing
    // The parse() static function allows parsing a string containing numeric literal into a number.
    print(num.parse('15'));
    print(num.parse('10.51'));
    //!print(num.parse('14A'));  // The parse function throws a FormatException
  }
//? Strings
  {
    // Strings represent a sequence of characters.
    // For instance, if you were to store some data like name, address etc.
    // the string data type should be used.
    // A Dart string is a sequence of UTF-16 code units.
    //* declare a string
    {
      // we can use either a single quote or a double quote
      String str1 = 'this is a single line string';
      String str2 = "this is a single line string";
      /*
      !   String str1 = 'this is a single 
      !   line string'; // this line of code will result in an error
      */
      String str3 = '''this is a multiline line string''';
      String str4 = """this is a multiline 

      line string""";
      print(str4); // output-> this is a multiline line string
    }
    //*interpolate the value of a Dart expression within strings
    {
      //You can use "${}" can be used to interpolate the value of a Dart expression within strings.
      int n = 1 + 1;

      String str1 = "The sum of 1 and 1 is ${n}";
      print(str1);

      String str2 = "The sum of 2 and 2 is ${2 + 2}";
      print(str2);
    }

    //*String Interpolation
    {
      // The process of creating a new string by appending a value to a static string is termed as concatenation or interpolation.
      // The operator plus (+) is a commonly used mechanism to concatenate / interpolate strings.
      String str1 = "hello";
      String str2 = "world";
      String res1 = str1 + str2;
      print("Result : ${res1}");

      String res2 = "hello" " world";
      print("Result : ${res2}");

      //! String res2 = str1 str2 // this line of code will result in an error
      //! String res2 = "hello", " world"; // this line of code will result in an error
    }
  }
//?Bools
  //  The Boolean data type represents Boolean values true and false.
  //   Dart uses the bool keyword to represent a Boolean value.
  {
    //  Unlike JavaScript, the Boolean data type recognizes only the literal true as true.
    //  Any other value is considered as false.
    var str = 'DSC';
    if (str == true) {
      print('String is not empty');
    } else {
      print('Empty String');
    }
    //output-> Empty String

    // The above snippet, if run in JavaScript, will print the message ‘String is not empty’ as the if construct will return true if the string is not empty.
    // However, in Dart, str is converted to false as str != true. Hence the snippet will print the message ‘Empty String’ (when run in unchecked mode).
    // The above snippet if run in checked mode will throw an exception, as conditions can only check for static variables.
  }
}
