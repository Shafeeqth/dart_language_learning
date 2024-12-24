import 'number.dart';

void main(List<String> args) {
  Stream<int> stream = Number().singleStream;

  stream.listen((event) => print(event)).onError((err) => print(err));
  // stream.listen((event) => print(event)).onError((err) => print(err)); // cant subscribe more that subscribers

  // use broadcast streams

  Stream broadcastStrem = Number().broadcastStream;
  broadcastStrem.listen((data) => print("listening 1 $data"));
  broadcastStrem.listen((data) => print("listening 2 $data"));
  broadcastStrem.listen((data) => print("listening 3 $data"));
}
