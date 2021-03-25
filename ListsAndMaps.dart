void main() {
  // ? Lists:
  {
    //* Declaring a list
    //! var list_name = new List(initial_size) // deprecated in dart 2
    var lst1 = [1, 2, 3];

    //* Initializing a list
    lst1[0] = 12;
    lst1[1] = 13;
    lst1[2] = 11;
    print(lst1);
    // [12, 13, 11]

    //* Inserting elements to the list:
    // The add() function in the List class is used to dynamically add elements to the list.
    var lst2 = []; // creates a zero-length list.
    lst2.add(12);
    lst2.add(13);
    print(lst2); // [12, 13]

    //* Updating the list:
    List lst3 = [1, 2, 3, 4, 5, 6];
    print('The value of list before replacing ${lst3}'); // [1, 2, 3, 4, 5, 6]

    lst3.replaceRange(0, 3, [11, 23, 24]);
    print(
        'The value of list after replacing the items between the range [0-3] is ${lst3}'); // [11, 23, 24, 4, 5, 6]

    //* Removing items form the list

    List lst4 = [1, 2, 3, 4, 5, 6];
    print(
        'The value of list before removing the list element ${lst4}'); // [1, 2, 3, 4, 5, 6]
    lst4.remove(1);
    print(
        'The value of list after removing the list element ${lst4}'); // [2, 3, 4, 5, 6]
    lst4.removeAt(1);
    print(
        'The value of list after removing the list element ${lst4}'); // [2, 4, 5, 6]
    lst4.removeRange(0, 3);
    print('The value of list after removing the list element ${lst4}'); // [6]
    //--------------------------------

    //* Other methods:
    //? first()
    // Returns the first element in the list.

    //? isEmpty()
    // Returns true if the collection has no elements.

    //? isNotEmpty()
    // Returns true if the collection has at least one element.

    //? length()
    // Returns the size of the list.

    //? last()
    // Returns the last element in the list.

    //? reversed()
    // Returns an iterable object containing the lists values in the reverse order.

    //? Single()
    // Checks if the list has only one element and returns it.

  }
  //? Maps:
  {
    //  The Map object is a simple key/value pair.
    //  Keys and values in a map may be of any type.
    //  A Map is a dynamic collection.
    //  In other words, Maps can grow and shrink at runtime.
    //  Note − A map value can be any object including NULL.

    //*  Declaring a Map:
    //  var identifier = { key1:value1, key2:value2 [,…..,key_n:value_n] }
    var details1 = {'Usrname': 'tom', 'Password': 'pass@123'};
    print(details1); // {Usrname: tom, Password: pass@123}

    //* Adding Values to Map Literals at Runtime:
    var details2 = {'Usrname': 'tom', 'Password': 'pass@123'};
    details2['Uid'] = 'U1oo1';
    print(details2); // {Usrname: tom, Password: pass@123, Uid: U1oo1}

    //* Declaring an empty map and adding values to it:
    var details = {};
    details['Uid'] = 'U1oo1';
    print(details);
  }
  //? Enumrations
  {
    // An enumeration is used for defining named constant values.
    //  An enumerated type is declared using the enum keyword.

    print(Status
        .values); // [Status.none, Status.running, Status.stopped, Status.paused]
    print(
        'running: ${Status.running}, ${Status.running.index}'); // running: Status.running, 1
    print(
        'running index: ${Status.values[1]}'); // running index: Status.running
    //! print('running index: ${describeEnum(Status.running)}'); // running index: running // need some specififc libraries
  }
}

enum Status { none, running, stopped, paused }
