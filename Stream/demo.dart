import 'dart:async';

void main(List<String> args) {
  StreamController controller = StreamController<int>();

  controller.sink.add(1); // add data to stream

  controller.addError(
      Exception("Something went wrong")); // throw an exception to stream;

  controller.close(); // close controller

  controller.stream
      .toList()
      .then((result) => print(result)) // not proper way.. 
      .catchError((err) => print(err));
}
