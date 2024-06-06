import 'durum.dart';
import 'hareket.dart';
import 'tasit.dart';

class Ucak extends Tasit with Durum implements Hareket {
  late int _yolcuSayisi;
  Ucak(super.cinsi, super.modeli, super.uretimYili);

  // getter setter

  /// Ucak yolcu sayısını döndürür. [int] türünde değer döner.
  int get yolcuSayisi => _yolcuSayisi;

  /// Ucak yolcu sayısını set eder. [int] türünde değer alır.
  set yolcuSayisi(int yolcuSayisi) => _yolcuSayisi = yolcuSayisi;

  // Hareket implemente edilip metotlar override edilip kullanılmıştır.
  @override
  void dur() {
    print("${super.cinsi} durdu");
  }

  // Hareket implemente edilip metotlar override edilip kullanılmıştır.
  @override
  void hizlan() {
    print("${super.cinsi} hızlandı");
  }

  // Hareket implemente edilip metotlar override edilip kullanılmıştır.
  @override
  void kalkisYap() {
    print("${super.cinsi} kalkış yaptı");
  }

  // mixin Durum ile gelen metot override edilip kullanılmıştır.
  @override
  void yolcuSayisiGoster() {
    print("Yolcu sayısı: $_yolcuSayisi");
  }

  // mixin Durum ile gelen metot override edilip kullanılmıştır.
  @override
  void yukseklikGoster() {
    print("Yükseklik: 10000");
  }
}
