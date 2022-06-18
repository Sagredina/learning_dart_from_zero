void main() {
  
  int money = 15;
  String userName = "Veli";


  bool isCustomerRich = false;

  print("$money" + userName);

  if (money > 10){
    print("Sen zenginsin abi");
  } else{
    print("Gerekirse simit yeriz");
  } 
  
  money = money - 10;

  if (money > 10){
    print("Sen çok zenginsin abi");
  } else{
    print("abi burada ne işin var");
  } 
  //

  // müşteri bankaya gelir ve 10 tlsi vardır ve bir sorgu yapar.
  // sorgu sonucu 20 tlsi alınır.
  // eğer kalan parası sıfırdan küçükse bankadan kovulur
  // eğer adamın parası bankingcosta yetmiyorsa bankaya almayın


  int newCustomerMoney = 0;
  final int bankingCost = 5;
  int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("Hoşgeldiniz beyefendi");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if(newCustomerMoney > 0){
    print("Beyefendi hoşgeldiniz");
  }
  else {
    print("beyfendi kredinizi ödeyin");
  }

  // bir mağazaya isim verilecek ve örnek isimler toplanır
  // örnek isimler ahmet mehmet veli kx x
  // mağaza der ki ben sadece karakter uzunluğu 2 veya daha altı olanları görmek istiyorum
  // mağazada bu koşula uyanları yanyana görmek istiyorum aralarında boşluk olacak



  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "KX";
  final String xCompany = "X";

  String results = "";
  const int companyLenght = 6;

  if (ahmetCompany.length > companyLenght) {
    results = results + ahmetCompany;

  }
  if (mehmetCompany.length > companyLenght) {
    results = results + mehmetCompany;
    
  }
  if (veliCompany.length > companyLenght) {
    results = results + veliCompany;

  }
  if (kxCompany.length > companyLenght) {
    results = results + kxCompany;

  }
  if (xCompany.length > companyLenght) {
    results = results + xCompany;

  }
  
  if (results.isEmpty) {
    print("Patron bulamadık");
  }
  print(results);



}