// ? Class:
// In terms of OOP is a blueprint for creating objects.
// It encapsulates data for the object.
// ----------------------------------------------------------------
// ?Example 1.
void main() {
  User P1 = new User(); // instantiating an object of the class User
  P1.printName();
}

class User {
  String name = "Menna";
  int age = 7;
  void printName() {
    print(name);
  }
}

// ----------------------------------------------------------------
// ? Example 2.
void main() {
  User P1 = new User("Menna", 7);
  P1.printName();
  print(P1.getAge());
}

class User {
  String? name; // to allow the variable to have a null value
  int? age; // to allow the variable to have a null value
  User(String n, int a) {
    name ??= n; // assign it a value if it's null
    age ??= a; // it's redundant as we are sure that it will be always null
  }
  void printName() // to print the name of the user
  {
    print(name);
  }

  int getAge() // return the age of the user
  {
    return age ?? 0;
  }
}

// ----------------------------------------------------------------
// ? Example 3.
void main() {
  User P1 = new User("Menna", 7);
  P1.printName();
  print(P1.doubleAge);
  P1.updateAge = 2;
  print(P1.doubleAge);
}

class User {
  String? name;
  int? age;
  User(String n, int a) {
    name ??= n;
    age ??= a;
  }
  void printName() // can be reduced to: void printName() => print(name);
  {
    print(name);
  }

  int get doubleAge // we don't use () when we call this function
  {
    return (age ?? 0) * 2;
  }

  void set updateAge(int a) // use it dirctly as you use variable names
  {
    age = a;
  }
}

// ----------------------------------------------------------------
// ? Example 4.
void main() {
  Parent P1 = new Parent("Menna", 7);
  P1.printName();

  Child C1 = new Child("Menna", 7);
  C1.printName();
}

class Parent {
  String? name;
  int? age;
  Parent(String n, int a) {
    name ??= n;
    age ??= a;
  }
  void printName() => print(name);
}

class Child extends Parent {
  Child(String n, int a)
      : super(n,
            a); // use the same var names used in the constructor of the parent class

  @override // when we use it, the number of parameters should match, otherwise the darty compiler will through an exception
  void printName() => print("Name: ${name}");
}

// ----------------------------------------------------------------
// ? Example 5.
class city {
  static int num = 1;
  static void display() {
    print("The value of num is ${city.num}");
  }
}

void main() {
  city.display();
  city.num = 12;
  city.display();
}
