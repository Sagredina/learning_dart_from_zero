void main() {
  
// Müşteri geldi, ismi Ahmet, parası ise 20

Map<String, int> users = {"ahmet": 20,"mehmet": 30};

// Müşteri ahmetin ne kadar parası var

print("Ahmet'in parası ${users["ahmet"]}");  

// Müşteri kimler var elinde

for(var item in users.keys){
  print("${item} - ${users[item]}");
}

for (var i = 0; i < users.length; i++){
    print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  }

// Ben bankayım. Müşterilerimin birden fazla hesabı olabilir
// Ahmet bey 3 hesap, sırasıyla 100, 300, 200
// Mehmet bey 30, 50
// Veli bey 30
// adamların hesaplarını kontrol et. 150tlden fazla olan varsa krediniz hazır de.

print("-----------------------------------------------");

Map<String,List<int>> vbBank = {
  "ahmet":[100,300,200]
};
vbBank["Mehmet"] = [30,50];
vbBank["Veli"] = [30];

for (var item in vbBank.keys) {
      // bankanın tüm elemanları

      for (var money in vbBank[item]!) {
        // userin hesaplarını dolaşıyorum

        if (money > 150){
          print("kredin hazır");
          break;
        }
      }

}
// bankadaki müşterilerin toplam meblasını merak ediyorum

for (var name in vbBank.keys) {
  // vbBank[item]! anlamı müşterinin hesapları demek
  int result = 0;
  for (var money in vbBank[name]!) {
    result = result + money;
  }

  print("${name} senin toplam paran $result");

}

}