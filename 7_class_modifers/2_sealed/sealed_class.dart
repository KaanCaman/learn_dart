/// # Sealed modifier
///
/// [sealed] sınıf değiştiricisi (modifier),
///   Dart programlama dilinde bilinen ve sayılabilir alt sınıflar kümesi oluşturmak için kullanılır.
///   Bu sayede, tüm alt sınıfları kapsayan güvenli switch yapıları yazabilirsiniz.
///
/// [sealed] ile şunları elde edersiniz:
///   Bilinen Alt Sınıflar:
///     sealed ile işaretlenen sınıfın sadece aynı kütüphane içinde alt sınıfları tanımlanabilir.
///     Dışarıdan müdahaleye izin verilmez.
///
///   Kapsamlı [switch] Yapıları:
///     sealed sayesinde,
///     tüm alt sınıfları bilirsiniz.
///     Bu da [switch] yapılarında tüm ihtimalleri ele almaya zorlar ve hata yakalama oranını yükseltir.
///
///   Soyut Sınıf (Implicit Abstract):
///     sealed sınıfın kendisi soyuttur (abstract).
///     Yani onu direk olarak new ile instance oluşturamazsınız.
///
///   Fabrika Metodu Desteği:
///     sealed sınıflar, alt sınıflar oluşturmak için fabrika methodları kullanabilir.
///
///    Alt Sınıfların Özgürlüğü:
///     Alt sınıflar sealed olmadığı için normal şekilde instance oluşturulabilir ve kullanılabilir.
///

// Sealed Sınıf
sealed class Tasit {
  Tasit() {
    print("sealed Tasit Sinifi Olusturuldu.");
  }
}

// Alt Sınıf
class Araba extends Tasit {
  Araba() {
    print("Araba Sinifi Tasit sinifindan extends ile olusuturuldu.");
  }
}

// Alt Sınıf
class Otobus implements Tasit {
  Otobus() {
    print("Otobus Sinifi Tasit Sinifindan implements ile olusturuldu.");
  }
}

// Alt Sınıf
class Bisiklet extends Tasit {
  Bisiklet() {
    print("Bisiklet Sinifi Tasit Sinifindan extends ile olusturuldu.");
  }
}

// class Gemi extends Tasit {}

String tasitKornaSesiGetir(Tasit tasit) {
  return switch (tasit) {
    Araba() => "Tut tut",
    Otobus() => "Pırt pırt",
    Bisiklet() => "Ding ding",
    // Gemi() => "Hooonk hooonk"
  };
}

void main(List<String> args) {

  // Tasit tasit = Tasit(); // Hata: Tasit soyut sinif oldugu için nesne üretilmez..


  Tasit araba = Araba();
  Tasit otobus = Otobus();
  Tasit bisiklet = Bisiklet();

  print("Araba Korna Sesi: ${tasitKornaSesiGetir(araba)}");
  print("Otobus Korna Sesi: ${tasitKornaSesiGetir(otobus)}");
  print("Bisiklet Korna Sesi: ${tasitKornaSesiGetir(bisiklet)}");
}
