import 'number.dart';

void main(List<String> args) {
  Number()
      .singleStream
      .take(10) // take first 10 event / numbers
      .where((num) => num % 2 == 0) // filter
      .map((number) => "number $number") // transform data 
      .listen((data) => print(data), 
      onDone: () => print("done!"), // onDone callback 
      onError: (e, s) => print("something went wrong") // onError callback - you can either use try/catch
      ); 
}
