class Model {}

mixin Sharable { // use mixin key word to declare a mixin
  void share(String content) {
    print("sharing $content");
  }
}

class User extends Model with Sharable {} // use with to use mixin

class Comment extends Model with Sharable {}

void main(List<String> args) {
  var user = User();

  user.share("Something");
}
