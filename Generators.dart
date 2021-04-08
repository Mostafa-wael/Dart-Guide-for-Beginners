Iterable<int> getRange(int start, int end) sync* {
  for (int i = start; i < end; i++) yield i;
}

void main() {
  dynamic numbers = getRange(0, 10);
  numbers = getRange(1, 10).where((num) => num % 2 == 0);

  for (int val in numbers) print(val);
}
