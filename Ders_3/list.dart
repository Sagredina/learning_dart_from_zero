void main() {
  
  // bir bankaya on müşteri gelir bunların 100 110 50 tlsi vardır

  final int money1 = 100;
  final int money2 = 110;
  
  // 100den büyük olanlara hoşgeldiniz beyefendi desin

  if (money1 > 100) {
    print("hoşgeldiniz beyfendi");
  }

  if (money2 > 100) {
    print("aa");
  }


  String name = "";

  // LİSTELEMEDE SIRALAMA 0, 1, 2 OLARAK GİDER. YANİ EN BAŞTAKİ NESNE HER ZAMAN SIFIRDIR.

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];


  print("müşteri1 parası = ${moneys[0]}");

  // paraları büyük olana göre 

  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 300);
  // moneys.reversed.toList().add(25);
  moneys.insert(0, 5);
  print(moneys);


  newMoneys.add(5);
  newMoneys.clear();
  // newMoneys.reversed.toList();
  print(newMoneys);

  // bana 100 tane müşteri gönder hepsine sırayla numara sırasına göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index){
    return index + 5;

  });
  print(customerMoney);

  // customers 100 30 40 60 var. 35 tlden büyük olanlara kredi verebiliriz. küçüklere bye.

  List<int> moneyNewCustomers = [100, 30, 40, 60];

  for(int i = 0; i < moneyNewCustomers.length ; i = i + 1){
    print("müşteri parası: ${moneyNewCustomers[i]}");
  }
  }
