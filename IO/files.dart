import 'dart:io' as io;

void main(List<String> args) {
  io.File file;
  io.IOSink? writer;

  try {
    file = io.File("./demo.txt");
    writer = file.openWrite();
    writer.write("Hello World");
  } on io.FileSystemException catch (e) {
    print("File not found: $e");
  } catch (e) {
    print("Exception: $e");
  } finally {
    print("works anyway");
    writer?.close();

  }
}
