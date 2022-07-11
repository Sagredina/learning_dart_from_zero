import 'dart:html';

void main(List<String> args) {
  final user = _User("Veli",age: 21);

  // müşterinin yaşını 18den küçük kontrolü yap

  // if ((user.age?? 0) < 18) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print("Evet küçük");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // kullanıcılarımın parası var ama paranın tipi değişken olabilir
  // parası olan adamın parametresi isim de olabilir değer de olabilir
  // ya TL yazacak ya da 15 
  // ekranda göster
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + "a");
  //  ========
  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print("okok");
  } 

  final moneyBank1 = Bank(40, "12");
  final moneyBank2 = Bank(30, "12");

  print(moneyBank1 == moneyBank2);

  // müşteri banka sınıfından 2 kişinin parasını toplayıp sonucunu söyler misin

  print(moneyBank1 + moneyBank2);

  // benim bankama gelen müşterilerin idsi aynı olanlar aynı müşteri olmalıdır
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);


  // diğer bankadan bir modül aldık. bunu ekleyip müşterinin parasını sorgular mısın?

  // müşterinin parasına 10 tl ekle ekranda göster ve adamın idsini 1 arttır sonrasında ismini veli yap

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName("Veli");

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType = "TL";

  _User(this.name, {this.age});

  void updateMoneyWithString (String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber (int number) {
    moneyType = number;
  }
}


class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id); 

  int operator +(Bank newBank) {
    return money + newBank.money;
  } 

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + "Veli";
  } 
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true; {
      
    return other is Bank && other.id == id;
    }
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;
  
  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}


mixin BankMixin {
  void sayBankHello();
  
  void calculateMoney(int money) {
    print("money");
  }
}