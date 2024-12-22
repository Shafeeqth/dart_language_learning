class Sentence implements Iterator {
  int _wordIndex = -1;
  final List<String> _words;

  Sentence(String sentence) : _words = sentence.split('');

  @override
  get current {
    if (0 <= _wordIndex && _wordIndex <= _words.length - 1) {
      return _words[_wordIndex];
    }
  }

  @override
  bool moveNext() {
    if (_wordIndex < _words.length - 1) {
      _wordIndex++;
      return true;
    }
    return false;
  }
}

void main(List<String> args) {
  List<int> lst = [1, 2, 4, 5, 6];
  Iterator it = lst.iterator;
  while (it.moveNext()) {
    print(it.current);
  }

  var sentence = Sentence("Hello world");
  while (sentence.moveNext()) {
    print(sentence.current);
  }
}
