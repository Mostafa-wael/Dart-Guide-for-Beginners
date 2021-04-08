import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete: $result');
}

void task2() {
  // Duration someTime = new Duration(seconds: 5);
  sleep(Duration(seconds: 3)); // or sleep(someTime);

  String result = 'task 2 data';
  print('Task 2 complete $result');
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete $result');
}
