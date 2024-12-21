void main(List<String> args) {

  // Future is an object which represent the result of asynchronous task -> task offload from the main isolate 
  print(1);
  Future<int> future = Future<int>.delayed(Duration(seconds: 6), () {
    return 2 * 2;
  });
  Future<int> future1 = Future<int>.delayed(Duration(seconds: 4), () {
    return throw Exception("Something went wrong");
  });

  future.then((result) => print(result)).catchError((err) => print(err));
  
  future1.then((result) => print(result)).catchError((err) => print(err));

  print(2);
}
