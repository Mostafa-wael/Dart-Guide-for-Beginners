import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  // this called a modifier
  task1();
  // print(task2());
  String dataFromTask2 = await task2(); //
  task3(dataFromTask2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete: $result');
}

Future task2() async {
  // Duration someTime = new Duration(seconds: 5);
  // sleep(Duration(seconds: 5)); // or sleep(someTime);
  // instead of using sleep function which is sync, we,
  // will use Future.delayed() which is asynchronous
  String result;
  await Future.delayed(Duration(seconds: 5), () {
    // callback function, what happens after that?
    result = 'task 2 data';
    print('Task 2 complete: $result');
  });
  return result;
}

void task3(String dataFormTask2) {
  String result = dataFormTask2;
  print('Task 3 complete: $result');
}
