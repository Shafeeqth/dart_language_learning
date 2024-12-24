import 'dart:async';

import 'number.dart';

void main(List<String> args) {
  Stream stream = Number().singleStream;

  StreamSubscription subscription = stream.listen((event) => print(event));

  Timer(Duration(seconds: 2), () {
    print("Subscription got paused");
    subscription.pause();
  });
 

  Timer(Duration(seconds: 5), () {
    print("Subscription got resumed");
    subscription.resume();
  });


  Timer(Duration(seconds: 9), () {
    print("Subscription got canceled");
    subscription.cancel();
  });
}
