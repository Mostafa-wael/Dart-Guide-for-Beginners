import 'dart:async'; // to use the timer and the StreamController

void main() {
  // final myStream = NumberCreator().stream.listen(print);

  // final myStream = NumberCreator().stream;
  // final myStream = NumberCreator().stream.map((i) => 'String $i');
  // final myStream = NumberCreator().stream.asBroadcastStream(); // NumberCreator().stream; will allow only one listener

  final myStream = NumberCreator().stream;
  final subscription = myStream.listen(
    (data) {
      print('Data: $data');
    },
    onError: (err) {
      print('Error!');
    },
    cancelOnError: false,
    onDone: () {
      print('Done!');
    },
  );
}

class NumberCreator {
  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (t) {
      _controller.sink.add(_count);
      _count++;
      // if (_count % 2 == 0) throw 'Error!';
    });
  }

  var _count = 1;
  final _controller = StreamController<int>();
  Stream<int> get stream => _controller.stream;
}
