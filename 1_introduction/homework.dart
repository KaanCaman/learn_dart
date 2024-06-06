/// # Sorular
/// 1 - Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
/// "Benim adım kaan caman, yaşım 34 ve tüm ismimdeki karakter sayısı : 15'tir" yazdırın
///
/// 1 - Store your name, surname and age in different variables, print to screen
/// "My name is kaan caman, I am 34 years old and the number of characters in my full name is: 15"
///
/// 2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın
/// örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12dir
///
/// 2- Store all sides of a triangle in variables and print the perimeter to the screen
/// example the perimeter of a triangle with the first side 3, the second side 4, and the third side 5 is 12
///

//Cevaplar
main(List<String> args) {
  String ad = "kaan";
  var soyad = "caman";
  int yas = 34;

  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı ${ad.length + soyad.length}'tir.");
  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı ${(ad + " " + soyad).length}'tir.");

  int birinciKenar = 3;
  var ikinciKenar = 4;
  int ucuncuKenar = 5;

  print(
      "Birinci kenarı $birinciKenar, ikinci kenarı $ikinciKenar, üçüncü kenarı $ucuncuKenar olan üçgenin çevresi ${(birinciKenar + ikinciKenar + ucuncuKenar)}'dır");
}
