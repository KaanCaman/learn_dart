/// KALITIM INHERITANCE :
///   İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun.
///   Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır.
///
///   Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir.
///   (saç rengi göz rengi)
///
///   Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.
///   ( Anne baba kısa boylu iken çocuğun uzun olması).
///
///   Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir.
///
///   Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması
///   ya da bazı özellikleri diğer sınıflara izin vermesidir.
///   Extends anahtar kelimesi:
///       bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.
///
///   Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir.
///   Her alt sınıf süper sınıfın özelliklerini taşır.
///
///   Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir.
///   Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.
///   Kalıtımın Faydaları
///   Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.
///
///   if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir.
///   Bunun yerine kalıtım tercih edilmelidir.
///   Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
///
///  Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
///  super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
///

void main(List<String> args) {
  Kisi kaan = Kisi("Kaan", 21);
  kaan.kendiniTanit();

  Calisan ali = Calisan("Ali", 25, 5000);
  ali.kendiniTanit();
  ali.maas = 6000;
  ali.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas) {
    print("$isim için Kisi sınıfının kurucusu çalıştı");
  }
  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String name, int age, this.maas) : super(name, age) {
    print("$name için Çalışan sınıfının kurucusu çalıştı");
  }

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}
