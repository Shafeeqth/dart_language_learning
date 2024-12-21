import "dart:io";

import "StringExtension1.dart" show StringExtension1, StringPadding;

void main(List<String> args) {
  print("Enter you name");
  String? name = stdin.readLineSync();
  print("your name is ${name?.capitalize()}");

  print(StringExtension1("ShaFEEQue").capitalize());
}
