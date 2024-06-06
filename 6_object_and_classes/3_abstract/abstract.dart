///
///   Abstract soyut sınıf:
///      Sınıflar arasında soyutlama yapmak için kullanılır.
///      Abstract sınıflardan nesne üretilemez ,
///      abstract sınıflarda normal ve abstract methodlar olur
///      abstract methodlar alt sınıflarca override edilmek zorundadır.
///      Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
///

import "dart:math" as math show pi;

void main() {
  // Sekil sekil = Sekil(); //! Hata: Abstract sınıflardan nesne üretilemez

  // Şekil nesneleri oluşturma
  final Sekil kare = Kare(kenarUzunlugu: 5);
  final Sekil dikdortgen = Dikdortgen(en: 10, boy: 7);
  final Sekil cember = Cember(yariCap: 8);

  // Alan ve çevre hesaplamaları
  print("Kare Alanı: ${kare.alanHesapla()}");
  print("Kare Çevresi: ${kare.cevreHesapla()}");

  print("Dikdörtgen Alanı: ${dikdortgen.alanHesapla()}");
  print("Dikdörtgen Çevresi: ${dikdortgen.cevreHesapla()}");

  print("Çember Alanı: ${cember.alanHesapla()}");
  print("Çember Çevresi: ${cember.cevreHesapla()}");

  // Şekil bilgilerini gösterme
  kare.sekilBilgileriniGoster();
  dikdortgen.sekilBilgileriniGoster();
  cember.sekilBilgileriniGoster();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();

  void sekilBilgileriniGoster() {
    print("Sekil türü: ${this.runtimeType}");
  }
}

class Kare extends Sekil {
  double kenarUzunlugu;

  Kare({required this.kenarUzunlugu});

  @override
  double alanHesapla() {
    return kenarUzunlugu * kenarUzunlugu;
  }

  @override
  double cevreHesapla() {
    return 4 * kenarUzunlugu;
  }

  @override
  void sekilBilgileriniGoster() {
    super.sekilBilgileriniGoster();
    print("Kenar uzunluğu: $kenarUzunlugu");
  }
}

class Dikdortgen extends Sekil {
  double en;
  double boy;

  Dikdortgen({required this.en, required this.boy});

  @override
  double alanHesapla() {
    return en * boy;
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy);
  }

  @override
  void sekilBilgileriniGoster() {
    super.sekilBilgileriniGoster();
    print("En: $en, Boy: $boy");
  }
}

class Cember extends Sekil {
  double yariCap;

  Cember({required this.yariCap});

  @override
  double alanHesapla() {
    return math.pi * yariCap * yariCap;
  }

  @override
  double cevreHesapla() {
    return 2 * math.pi * yariCap;
  }

  @override
  void sekilBilgileriniGoster() {
    super.sekilBilgileriniGoster();
    print("Yarıçap: $yariCap");
  }
}
