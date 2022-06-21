void main() {
  // müşterinın adı var, parası var, yaşı var vs vs.

  late int customerMoney = 50;
  late String customerName = "Veli";
  late int customerAge = 13;
  late String customerCity = "Ardahan";

  // Bu müşterimin yaşı 10'dan büyükse işlem yap

  if (customerAge > 10) {
    print("Alışveriş başarılı");
  } else {
    print("alışveriş yapamazsın");
  }

  // yeni müşteri geldi yine aynı bilgilerler

  late int customerMoney2 = 50;
  late String customerName2 = "Veli";
  late int customerAge2 = 13;
  late String customerCity2 = "asd";

    if (customerAge2 > 10) {
    print("Alışveriş başarılı");
  } else {
    print("alışveriş yapamazsın");
  }

  controlCustomerAge(customerAge2);

  // Müşterilerin şehirlerini unutmuşuz. ekleyelim.
  // ---------
  // Müşterileri gruplasak ve aynı özellikleri aynı şekilde bana gösterse.


  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  // bizim paraları veren bir servisimiz var. eğer cevap gelmezse ana değer olarak 10 ata.
  
  // bankaya müşteri gelir. birinin 100 tlsi var birinin hesabı yok diğerinin 0 tlsi var
  // hesabı olmayana yeni hesap açalım

  // yeni bir method olsun bu methodda hesabı ve parası olmayanları yok sayalım

  // para verdiklerimizi ekranda true yazalım

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyefendi");
      } else {
        print("bye");
      }
    } else {
      print("hadi gel hesap açalım");
    }

    //----------
    bool result = controlMoney(item) == null ? false : true;
    print(result);

    print("-----------------------------" * 10);

  int customerMoneyX = 15;
  User user1 = User("Hako", 15, age: 21, city: "Antalya");
  // User user2 = User("Hako2", 15, null, null);

  final user3 = User("aa", 159, age: 13);

   print(user3.userCode);

  print(user1.name);

  // müşteri son gelen kişinin şehrine göre kampanya yapacak eğer istanbulsa

  
  
  
  
  if (user3.city == null) {
    print("müşteri şehir bilgisini girmemiş");
  } else 
    if (user3.city!.isEmpty) {
      print("okok");
    }
  { 
    if (user3.city == "istanbul") {
      print("kazandınız");
    }
  }
  }
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
  if (money == null || money == 0) {
    return null;
  }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print("Alışveriş başarılı");
  } else {
    print("alışveriş yapamazsın");
  }
}

// Adı olmak zorunda
// Parası olmak zorunda
// Yaşı ve şehri vermeyebilir
// şehir yoksa istanbul say

class User {
  late String name;
  late int money;
  late int? age;
  late String? city;

  late final String userCode;
 
  User(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? "istanbul") + name;
  }
}

//

class User2 {
  late String name;
  late int money;
  late int? age;
  late String? city;

  late final String userCode;

  User2(this.name, this.money, this.age, this.city) {
  userCode = (city ?? "istanbul") + name;
}
}