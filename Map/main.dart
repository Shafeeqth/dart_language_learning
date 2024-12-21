void main(List<String> args) {
  var map = {"Name": "Shafeeque", "Age": 23, "Location": "Kerala"};

  Map<String, int> map2 = {"One": 1, "Two": 2, "Three": 3};

  final emptyMap = <String, int>{};

  map["Age"] = 24;
  map["Location"] = "Kochi";

  print(map.keys);
  print(map.values);
  map.remove("Age");
  print(map.containsKey("Age"));
  print(map.containsValue("Kerala"));

  map.forEach((key, value) => print("Key: $key, Value: $value"));

  for (var key in map.keys) {
    print("Key: $key, Value: ${map[key]}");
  }

  for (var key in map.entries) {
    print("Key: ${key.key}, Value: ${key.value}");
  }

  print(map["Name"]);
  print(map);
}
