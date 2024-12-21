var multiplier = (int n1) {
  return (int n2) {
    return (int n3) {
      return n1 * n2 * n3;
    };
  };
};

var takes = (Function func) {
  return (int num) {
    return func(num);
  };
};

// Array function
var sum = (int num1, int num2) => num1 + num2;

Function multiply = (int num1, int num2, int num3) =>
     num1 * num2 * num3;


void main(List<String> args) {
  print(multiplier(2)(2)(4));

  // takes takes an anonymous function ..
  print(takes((int num) {
    return num * 2;
  })(3));

  // arrow function implementation
  print(sum(23, 54));
}
