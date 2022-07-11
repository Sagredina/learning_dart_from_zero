import "class_singleton.dart";

void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 45),
    CarModel(category: CarModels.yamaha, name: 'ymaaha 3324', money: 44, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota 0ye', money: 55, isSecondHand: false),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('elimizde var');
  } else {
    print('patron yok alalım');
  }

  final reusltBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(reusltBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print('araba yok abi');
    isHaveCarMercedes = false;
  } finally {
    print('abi bu işlem ağır oldu bidaha sorma $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index);
  final _mercedes = CarModel(category: CarModels.mercedes, name: 'merer', money: 12312);
  carItems.add(_mercedes);
  carItems.sort((first, second) => second.money.compareTo(first.money));

  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]

void calculateToUser(List<CarModel> items) {
  // itemleri duzelt bmw olanlari yamaha
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    return CarModel(
        category: e.category == CarModels.bmw ? CarModels.yamaha : e.category,
        name: e.name,
        money: e.money,
        isSecondHand: false);
  }).toList();

  print(newItems);
}

// arabalar class'ı olacak
// arabaların modeli (bmw,toyota), ismi, parasi kesin olacak şehri olmayacak,
// eğer müşteri aksini söylemezse her araba 2. el sayılacak

// benim 5 tane arabam olacak

// benim bu arabalarımın kaç tanesi ikinci el
// yeni bir araba geldi bu bizde var gibi hissediyorum doğru mu?

// bana bmw olan ve parası 20'den büyük arabaların ismi

// isimleri yan yana gösterelim

// benim elimde mercedes var mı

// yeni gelen araba kaçıncı sırada

// mercedes ekle

// arabaları küçükten büyüğe sırala

// ben bütün arabaları user yapacam

// ya bu son ekleneni silelim
// bmw olan ve 30'dan düşükleri silelim
class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const []});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }