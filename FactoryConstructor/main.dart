class Logger {
  final String name;
  bool muted = false;
  static final _cache = <String, Logger>{};

  Logger._create(
      this.name); // named private constructor -> generative constructor

  factory Logger(
          String
              name) => // Factory constructor which return an instance of class
      _cache.putIfAbsent(name, () => Logger._create(name));

  void log(String message) {
    if (!muted) {
      print(message);
    }
  }
}

void main() {
  var logger = Logger('console');
  logger.log('Hello');

  // load the same logger from the cache
  var logger2 = Logger('console');
  logger2.log('Bye');
}
