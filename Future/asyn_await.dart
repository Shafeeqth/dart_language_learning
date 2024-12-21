import "dart:io" as IO;



Future<void> main(List<String> args) async {
  print(1);

  var result = await Future<int>.delayed(Duration(seconds: 4), () {
    return 2 * 2 * 2 * 2;
  });

  print(result);

  print(3);

  // await with error handling
  try {
    var result = await Future<int>.delayed(Duration(seconds: 4), () {
      throw Exception("Something went wrong");
    });
    print(result);
  } catch (e, s) {
    print("Exception $e");
    print("Trace \n $s");
  }

  IO.File file;
  IO.IOSink? writeFile;
  try {
    file = IO.File("something.txt");
    writeFile = file.openWrite();
    writeFile.write(
        "I want to write something to this file so this \n at ${DateTime.now()}");
    var readFiles = await file.readAsString();
    print(readFiles);

    // var res
  } on IO.FileSystemException {
    print("Something went wrong");
  } catch (e) {
    print(e);
  } finally {
    writeFile!.close();
  }
}
