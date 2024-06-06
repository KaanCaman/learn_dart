
/// SORU1: 
///   Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
///   Bu fonksiyon aldığı değere kadar olan çift sayıların 
///   toplamını geriye döndürsün..
/// 
/// 
/// QUESTION1: 
///   Write a function that takes an int number as a parameter.
///   This function should return 
///   the sum of even numbers up to the value it receives.
/// 
/// 
/// SORU2: 
///   Daire alanını hesaplayan fonksiyonu yazınız. 
///   PI sayısı opsiyonel olmalı
///   Eğer PI sayısı verilmediyse 
///   varsayılan olarak 3,14 alarak hesaplama yapın.
/// 
/// 
/// QUESTION2:
///   Write a function that calculates the area of a circle.
///   PI number should be optional
///   If the PI number is not given
///   calculate by default as 3.14.
/// 
/// 
/// SORU3: 
///   Bir ücgenin kenarlarını isimlendirilmiş 
///   parametre olarak alan fonksiyon yazınız.
///   Bu fonksiyon kenar değerlerine göre bu üçgenin 
///   çeşit kenar ikiz kenar veya eşkenar olduğunu
///   ekrana yazdırsın, geriye bir değer döndürmesin.
/// 
/// 
/// QUESTION3:
///   Write a function that takes the sides of a triangle as named parameters.
///   This function should print on the screen according to the edge values of this triangle
///   whether it is different edge, twin edge, or equilateral triangle,
///   should not return a value.
 

main(List<String> args) {
  int toplam = ciftSayilarinToplaminiBul(20);
  print("Toplam $toplam");

  double alan = daireAlanHesapla(2);
  print("Alan $alan");
  double alan2 = daireAlanHesapla(2, 3);
  print("Alan2 $alan2");

  ucgeninCesidiniSoyle();
}

// CEVAP - ANSWER 3 :
void ucgeninCesidiniSoyle(
    {int birinciKenar = 1, int ikinciKenar = 1, int ucuncuKenar = 1}) {
  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar) {
    print("Bu üçgen eşkenar üçgendir");
  } else if (birinciKenar == ikinciKenar ||
      birinciKenar == ucuncuKenar ||
      ikinciKenar == ucuncuKenar) {
    print("Bu üçgen ikiz kenardır");
  } else {
    print("Bu üçgen çeşit kenar bir üçgendir");
  }
}

// CEVAP - ANSWER 2 :
double daireAlanHesapla(double yariCap, [double piSayisi = 3.14]) {
  return piSayisi * yariCap * yariCap;
}

// CEVAP - ANSWER 1 :
int ciftSayilarinToplaminiBul(int sayi) {
  int toplam = 0;

  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }

  return toplam;
}
