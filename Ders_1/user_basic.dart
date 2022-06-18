

void main() {
  
  // Musterinin adini tut
  // Musterinin parasini goren
  // Musteriye  merhaba diyip parasini soyle
  // Bizim bankaya geldigi icin parasina +5 tl ekle
  // ya acaba 10 yapabilir miyiz

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Veli";
  userMoney = userMoney + 5;

  print("Merhaba $userName $userMoney");


  print("-----------------------");

  userMoney = userMoney - 10;

  print("Paraniz deger kaybetti $userMoney");
  userMoney += 5;
  userMoney = userMoney ~/ 2;

  print("Paraniz deger kazandi $userMoney");
  
  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney / 2;

  print("Ahmet bey paraniz uctu $ahmetMoney");
  print("Veli bey paraniz uctu $userMoney");
  
// yeni bir user adi olustur
// yeni bir para ver
// bu parayı 20ye bol ve ekranda goster
}