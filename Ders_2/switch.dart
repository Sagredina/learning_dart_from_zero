void main() {
  final int classDegree = 2;
  bool isSuccess = false;
  const int successValueHigh = 2;

  // 2 ise ekrana bravo 1 ise olur 0 ise güzel, yeterli. diğer durumlarda başarısız.
  // ekin

  switch(classDegree){

    case 2:
    print("Bravo");
    isSuccess = true;
    break;
    case 1:
    print("olur");
    isSuccess = true;
    break;
    case 0:
    print("yeterli");
    isSuccess = true;
    break;
    default:
    print("başarısız");
    isSuccess = false;
  }

  print("beyefendi cocugununuzun sonucu: $isSuccess");

//////////////////////////////////////////////////////////////

/// mağazaya gelenlerden adı veli olan olursa bravo yaz

String name = "ddadasasn";

const String specialUser1 = "veli";
const String specialUser2 = "ekin";

switch (name) {
  case 'veli':
  case 'ekin': 
  print("Bravo");
    
    break;
  default:
  print('sorunlu');
}

switch (name) {
  case specialUser1:
  case specialUser2: 
  print("Bravo");
    
    break;
  default:
  print('sorunlu');
}
}