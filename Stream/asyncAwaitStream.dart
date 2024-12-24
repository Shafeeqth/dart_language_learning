import 'number.dart';

Future<void> main(List<String> args) async {
  var stream = Number().singleStream;


  await for (var event in stream) {
    print(event);
  }
}
