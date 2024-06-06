import 'durum.dart';
import 'hareket.dart';
import 'tasit.dart';

class Tren extends Tasit with Durum implements Hareket {
  late int _yolcuSayisi;
  Tren(String cinsi, String modeli, int uretimYili)
      : super(cinsi, modeli, uretimYili);

  // getter setter

  /// Tren yolcu sayısını döndürür. [int] türünde değer döner.
  int get yolcuSayisi => _yolcuSayisi;

  /// Tren yolcu sayısını set eder. [int] türünde değer alır.
  set yolcuSayisi(int yolcuSayisi) => _yolcuSayisi = yolcuSayisi;

  // Hareket sınıfından gelen metotlar override edilip kullanılmıştır.
  @override
  void dur() {
    print("${super.cinsi} durdu");
  }

  // Hareket sınıfından gelen metotlar override edilip kullanılmıştır.
  @override
  void hizlan() {
    print("${super.cinsi} hızlandı");
  }

  // Hareket sınıfından gelen metotlar override edilip kullanılmıştır.
  @override
  void kalkisYap() {
    print("${super.cinsi} kalkış yaptı");
  }

  // mixin Durum ile gelen metot override edilip kullanılmıştır.
  @override
  void yolcuSayisiGoster() {
    print("Yolcu sayısı: $_yolcuSayisi");
  }
}
