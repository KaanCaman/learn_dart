///
///# Abstract Sınıflar ve implements
/// implements nedir ne işe yarar:
/// interface arayüz demek. 
///   Normal şartlarda biz extends anahtar kelimesi ile ilişkili olan sınıfa üst sınıftan miras alıyorduk.
///   Bu yalnızca birtane olabiliyordu. 
///   Interface yapısında ise istediğimiz kadar farklı sınıflardan 
///   implements anahtar kelimesi ile aralarına virgül koyarak alabiliyoruz.
///

void main(List<String> args) {
  Kus kus = Kus();
  kus.sesCikar();
  kus.uc();

  Balik balik = Balik();
  balik.sesCikar();
  balik.yuz();

  At at = At();
  at.sesCikar();
  at.kos();

  Insan insan = Insan();
  insan.sesCikar();
  insan.kos();
  insan.yuz();
  insan.uc();

  // her sinifin calistirabilecegi metot
  kus.mirasAlanHerSinifCalistirir();
  balik.mirasAlanHerSinifCalistirir();
  at.mirasAlanHerSinifCalistirir();
  insan.mirasAlanHerSinifCalistirir();
}

abstract class Hayvan {
  // Hayvan sınıfı soyut bir sınıftır.
  // Soyut sınıflardan nesne oluşturulamaz.
  // Soyut sınıfların içerisinde abstract metotlar ve normal metotlar bulunabilir.
  // Abstract metotlar alt sınıflarca override edilmek zorundadır.
  // sesCikar metodu alt sınıflar kendisi override ederek nasıl ses çıkaracağını belirler.
  void sesCikar();

  void mirasAlanHerSinifCalistirir() {
    print("Her sınıf bu metodu çalıştırabilir");
  }
}

abstract class Ucabilenler {
  // uçabilme yeteneği olan sınıfların implement etmesi gereken metot
  // bu metotu implement eden sınıflar uçabilir.
  // implement eden sınıflar nasıl uçacağını kendisi belirler.
  void uc();
}

abstract class Yuzebilenler {
  // yüzebilme yeteneği olan sınıfların implement etmesi gereken metot
  // bu metotu implement eden sınıflar yüzebilir.
  // implement eden sınıflar nasıl yüzeceğini kendisi belirler.
  void yuz();
}

abstract class Kosabilenler {
  // koşabilme yeteneği olan sınıfların implement etmesi gereken metot
  // bu metotu implement eden sınıflar koşabilir.
  // implement eden sınıflar nasıl koşacağını kendisi belirler.
  void kos();
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void sesCikar() {
    // Kalıtım aldığı sınıftan gelen metodu override ediyoruz.
    print("Cik cik cik");
  }

  @override
  void uc() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("Kus uçuyor");
  }
}

class Balik extends Hayvan implements Yuzebilenler {
  @override
  void sesCikar() {
    // Kalıtım aldığı sınıftan gelen metodu override ediyoruz.
    print("Balıklar sessizdir");
  }

  @override
  void yuz() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("Balik yüzüyor");
  }
}

class At extends Hayvan implements Kosabilenler {
  @override
  void sesCikar() {
    // Kalıtım aldığı sınıftan gelen metodu override ediyoruz.
    print("Iiiiihhaaaa");
  }

  @override
  void kos() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("At koşuyor");
  }
}

class Insan extends Hayvan implements Kosabilenler, Yuzebilenler, Ucabilenler {
  @override
  void sesCikar() {
    // Kalıtım aldığı sınıftan gelen metodu override ediyoruz.
    print("İnsan konuşur");
  }

  @override
  void kos() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("İnsan koşar");
  }

  @override
  void yuz() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("İnsan yüzer");
  }

  @override
  void uc() {
    // implemente ettiği sınıftan gelen metodu override ediyoruz.
    print("İnsan ucakla uçar");
  }
}
