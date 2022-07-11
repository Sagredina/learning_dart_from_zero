import 'model/product_config.dart';

void main() {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);

}

void calculateMoney(int money) {
  if (money > 5) {
    print("5 tl daha ekledik");
    Product.incerementMoney(5);
    print(Product.money);
  }

  // user classını kullanarak product yapmak istiyorum

  final user1 = User("veli", "aa");

  final newProduct2 = Product(user1.product);
  final newProduct3 =Product.fromUser(user1);

  productNameChange();

  // api key neydi acaba
  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;
   
  Product(this.name);

  Product.veli([this.name = "veli"]);

  factory Product.fromUser(User user){
    return Product(user.name);
  }

  static const companyName = "VB Bank";

  static void incerementMoney(int newMoney) {
    if (money == null) {
      money = money! + newMoney;
    }
  }
}


class User {
  final String name;
  final String product;

  User(this.name, this.product);
}

