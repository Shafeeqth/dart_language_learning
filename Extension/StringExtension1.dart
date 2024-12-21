extension StringExtension1 on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

extension StringPadding on String {
  String stringPad(int width) {
    return "${this.padLeft(width, "0")}";
  }
}
