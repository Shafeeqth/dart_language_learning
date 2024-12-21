void main(List<String> args) {
  String name = "shafeeque";

  try {
    print(name[10]);
  } catch (e) {
    print("Exception: $e");
  } finally {
    print("Finally block");
  }

  try {
    throw FormatException("Format Exception");
  } on RangeError {
    print("RangeError");
  } on NoSuchMethodError catch (e, s) {
    print("NoSuchMethodError");
    print("Exception: $e");
    print("StackTrace: $s");
  } catch (e) {
    print("Exception: $e");
  } finally {
    print("works anyway");
  }
}
