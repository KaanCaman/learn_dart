/// # Mixin - With deyimi
///
/// mixin anahtar kelimesi ile mixin sınıflar oluşturulurlar.
/// with anahtar kelimesi ile miras alınması sağlanır.
///
///   mixin içerisinde constructor oluşturulamaz.
///   with anahtar kelimesi ile constructor içeren bir sınıfı with anahtar kelimesi ile kullanamayız.
///   Birden fazla mixini yine arayüzde olduğu gibi aralarına virgül koyarak ekleyebiliriz.
///   Yine mixin içerisinde ki fonksiyonların override edilmesi mecbur değildir.
///   Mixin sınıftan bir nesne üretilemez.
///

void main(List<String> args) {
  // A a = A(); // Hata verir. Mixin sınıftan nesne üretilemez.
  // B b = B(); // Hata verir. Mixin sınıftan nesne üretilemez.
  final E e = E();
  // Abstract class içerisindeki kalıtım aldığı sınıf metotu
  e.ayiGoster();

  // Mixin üzerinden with ile kalıtım aldığı sınıf metotları
  e.byiGoster();
  e.cyiGoster();

  // abstract class implemente edilen metot
  e.dyiGoster();

  // kendi sınıf içerisndeki metot
  e.eyiGoster();
}

abstract class A {
  // abstract classlar içerisinde abstract metotlar ve normal metotlar bulunabilir.
  // gövdesi olan fonksiyonlar override edilmek zorunda değildir.
  void ayiGoster() {
    print("abstract classdan A");
  }
}

mixin C {
  // C(); // Hata verir. Mixin sınıflar içerisinde constructor oluşturulamaz.

  // mixin sınıflar içerisinde constructor oluşturulamaz.
  // mixin sınıflar içerisinde ki fonksiyonların override edilmesi mecbur değildir.
  void cyiGoster() {
    print("C");
  }
}

mixin B {
  // B(); // Hata verir. Mixin sınıflar içerisinde constructor oluşturulamaz.

  // mixin sınıflar içerisinde constructor oluşturulamaz.
  // mixin sınıflar içerisinde ki fonksiyonların override edilmesi mecbur değildir.
  void byiGoster() {
    print("B");
  }
}

abstract class D {
  // abstract classlar içerisinde abstract metotlar ve normal metotlar bulunabilir.
  // gövdesi olmayan fonksiyonlar override edilmek zorundadır.
  void dyiGoster();
}

class E extends A with B, C implements D {
  void eyiGoster() {
    print("E");
  }

  @override
  void ayiGoster() {
    super.ayiGoster();
    print("E classindan aYiGoster");
  }

  @override
  void dyiGoster() {
    print("D");
  }
}
