library number;

import 'dart:async' as async;

class Number {
  Number() {
    async.Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter > 10) {
        timer.cancel();
        _controller.done;
        _controller.close();
        return;
      }
      _controller.sink.add(_counter);
      _counter++;
    });
  }
  final _controller = async.StreamController<int>();
  int _counter = 0;

  Stream<int> get singleStream => _controller.stream;
  Stream<int> get broadcastStream => _controller.stream.asBroadcastStream();
}
