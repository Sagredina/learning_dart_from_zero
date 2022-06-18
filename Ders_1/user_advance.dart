void main() {
  String userName = "Veli";
  var userName2 = "Veli2";
  var userName2Money = 15;

  // Bu bölümde değişkeni sabitlemeyi ve double ile int arasında fark hesaplamayı işledim.



  // ----------------------------------------------------



  // Bank name = VB Bank
  // bank user 1 = "bank1musteri"
  // bank user 1 parasi = 100.000
  // bank1musteriye kimse dokunamaz 
  // yeni musteri gelecek bank2musteri
  // yeni bankaya gelenden bank user 1in parasını çıkarıp ekrana goster

  const String bankName = "VB BANK";
  const String user1 = "Bank1Musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank2Musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User2 Money :  $user2Money");

  print("-----------------------------------------------------------------------------");

}
