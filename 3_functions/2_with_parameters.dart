/// # Functions with Parameters
/// methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani
/// verilse de olur verilmese de olur gibi  durumlarda süslü ve köşeli parantez kullanırız.
///
/// Eğer köşeli parantez [] kullanırsak
/// bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
///
/// Eğer süslü parantez {} kullanırsak
/// burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken
/// sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
///
/// Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı  method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
///

main(List<String> args) {
  int toplam = sayilariTopla(4, 5, 6);
  print("Toplam $toplam");

  int toplam2 = sayilariTopla2(2, 3);
  int toplam3 = sayilariTopla2(2, 7, 9);
  print("Toplam2 $toplam2");
  print("Toplam3 $toplam3");

  int toplam4 = sayilariTopla3(9, sayi2: 5, sayi1: 8, sayi3: 8);
  print("Toplam4 $toplam4");

  int hacim = hacimHesapla(boy: 5, en: 3, yukseklik: 10);
  print("Hacim $hacim");
}

//required parameter
int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}

//optional
int sayilariTopla2(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

//optional named
int sayilariTopla3(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi2 + sayi3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
