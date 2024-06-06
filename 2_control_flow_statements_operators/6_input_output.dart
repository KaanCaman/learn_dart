import 'dart:io';

///
/// Kullanıcıdan veri almak için kullanılır.
/// stdin.readLineSync() metodu ile kullanıcıdan veri alınır.
/// Kullanıcıdan alınan veri String türündedir.
/// Kullanıcıdan alınan veri int, double, bool türlerine dönüştürülmek istenirse
/// int.parse(), double.parse(), bool.parse() metotları kullanılır.
///
main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas = yas + 5;
  print("girilen yas $yas");
}
