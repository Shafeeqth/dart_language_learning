typedef string = String;

void main(List<String> args) {
  int httpStatusCode = 200;
  const String name = "Shafeeque";

  int num1 = httpStatusCode;
  

  var multiLineString = """"
    Some random string that you 
    may have any benefit from 
    I really thing it would really benefit to you!!.

""";
  print(multiLineString);
  print(int.tryParse(name));

  double dbl = 2.33;
  

  string s = 'name' ' is ' 'shafeeque';
  print(s);
  print(name.runtimeType);

  string type = "shafeeque";
  print(type);

  print('httpStatusCode $httpStatusCode');

  final current;
  current = DateTime.now();
  print("current ${current}");

  final now = DateTime.now();
}
