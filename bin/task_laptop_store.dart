import 'dart:io';

main() {
  Map laptop1 = {
    "name": "Lenovo Ideapad 3",
    "Hard disk size": "512 SSD",
    "ram": "8GB",
    "Cpu": "Ryzen 5 6600H",
    "camera": "8 mg",
    "price": 1500,
  };
  Map laptop2 = {
    "name": "Hp, ",
    "Hard disk size": "512 SSD",
    "ram": "8GB",
    "Cpu": "Core i7 10th Ge",
    "camera": "8 mg",
    "price": 1000,
  };
  Map laptop3 = {
    "name": "Asus ",
    "Hard disk size": "512 SSD",
    "ram": "8GB",
    "Cpu": "Inter Core i5 6th G",
    "camera": "8 mg",
    "price": 700,
  };

  List<Map> Laps = [laptop1, laptop2, laptop3];
  print("Welcome To Our Store:\nPlesase Show Some of our Products");
  print("-----------------------------------------------------------");
  for (var i in Laps) {
    print(i["name"] +
        " : " +
        i["Cpu"] +
        " - " +
        i["Hard disk size"] +
        " - " +
        i["ram"] +
        " - " +
        i["price"].toString());
  }
  print("-----------------------------------------------------------");
  print("Plesaes Enter your budget");
  double? budget = double.tryParse(stdin.readLineSync() ?? "0");
  var newList = Laps.where((e) => e["price"] <= budget).toList();
  for (var e in newList) {
    print(e["name"] + ":" + e["price"].toString());
  }
}
