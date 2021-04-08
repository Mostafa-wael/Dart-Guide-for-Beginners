// how to create a future:
// we don't need so, as most APIs create them for us
// network communication:
//    final myFuture = http.get('http://example.com');
// Getting access to shared preferences:
//    final myFuture = SharedPreferences.getInstance();
// Future constructors:
//    final myFuture = Future(() {return 12;}); // it takes a function that returns 12
//    final myFuture = Future.value(12); // the same as above but, it assumes that you already know the value
//    final myFuture = Future.error(ArgumentError.notNull('input')); // the value can be an error!

// Ex:1 what is the output of the following code?

// void main() {
//   final myFuture = Future(() {
//     print('Creating the future.'); // Prints second.
//     return 12;
//   });
//   print('Done with main()'); // Prints first.
// }

// Handy functions and methods:
// 1. using it to make some delays
/*
final myFuture = Future.delayed(
  const Duration(seconds: 5),
  () => 12,
);
*/
// full code
void main() {
  Future.delayed(
    Duration(seconds: 3), // it waits for 3 seconds
    () => 12,

    //() => throw 'Error!', // throw erorr
  ).then((value) {
    // what to do with the value?
    print(value);
  }).catchError((err) {
    // what to do if error?
    print('Caught $err');
  }, test: (err) {
    // we can test the error
    // Optional test parameter.
    return err is String;
  }).whenComplete(() => print("all Done!!"));

  print('Waiting for a value...');
}
