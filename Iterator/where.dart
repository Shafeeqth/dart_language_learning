void main(List<String> args) {
  List<String> strNumbers = ["1.2", "2.23", "3.4", "4.5", "5.6", "Something"];
  
  var numbers = strNumbers.map((e) => double.tryParse(
      e)); // Convert string to double -> returns an iterable (not a list)
  print(numbers);

  var numbersWhere =
      numbers.where((element) => element != null); // Filter out null values
  print(numbersWhere);

  List<double?> numbersList = numbersWhere.toList(); // Convert iterable to list
  print(numbersList);

  double? result = numbersList.reduce((a, b) => a! + b!);

  print(result);

  // All with single line

  double? result1 = strNumbers
      .map((element) => double.tryParse(element))
      .where((elem) => elem != null)
      .reduce((acc, e) => acc! + e!);
  print("result in short $result1");
}
