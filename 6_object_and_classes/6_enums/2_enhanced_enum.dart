/// # Gelişmiş Enumlar
///   Dart programlama dilinde bazı sayma değerlerini
///   tek tek yazmak yerine bir grup haline getirebiliriz.
///   İşte buna "enum" deniyor.
///   Normal enumlardan farklı olarak,
///   gelişmiş enumlar sınıflara benzer şekilde özelliklere,
///   metodlara ve sabit değerlere sahip olabilir.
///
///   Gelişmiş enum oluşturken şunlara dikkat edelim:
///
///     Değişkenler sabit olmalı (final)
///     Oluşturucu methodlar sabit değer döndürmeli (const)
///     Fabrika methodları sadece enum içindeki değerleri döndürebilir
///     Diğer sınıflar Enum'u miras alamaz
///     Bazı methodlar (index, hashCode, ==) yeniden yazılamaz
///     "values" adında bir method oluşturulamaz (otomatik olarak eklenir)
///     Enum değerleri en başta tanımlanmalı ve en az bir değer olmalı
///     Enum değerleri içindeki methodlar "this" ile kendine ulaşabilir.
///     Bu kuralları takip ederek daha güçlü ve kullanışlı enumlar oluşturabilirsiniz.
///

// Compareable<T> sınıfı ile karşılaştırma yaparız.
// Compareable<T> sınıfı generic bir sınıftır T tipinde bir değer alır.
// T tipindeki değerlerin karşılaştırılmasını sağlar.
// Compareable<T> sınıfı içinde compareTo metodu bulunur.
// compareTo metodu iki değeri karşılaştırır ve int türünde bir değer döndürür.
enum Tasit implements Comparable<Tasit> {
// enum içersindeki değerler.
  otomobil(
    lastikSayisi: 4,
    yolcuSayisi: 5,
    kilometreBasinaUrettigiCO2: 400,
  ),
  otobus(
    lastikSayisi: 6,
    yolcuSayisi: 50,
    kilometreBasinaUrettigiCO2: 800,
  ),

  bisiklet(
    lastikSayisi: 2,
    yolcuSayisi: 1,
    kilometreBasinaUrettigiCO2: 0,
  );

// Enum constructor'u const olmalıdır.
  const Tasit({
    required this.lastikSayisi,
    required this.yolcuSayisi,
    required this.kilometreBasinaUrettigiCO2,
  });
// tanımlanan degiskenler final olarak işaretlenmelidir.
  final int lastikSayisi;
  final int yolcuSayisi;
  final int kilometreBasinaUrettigiCO2;

// enum içersindeki metotlar.
  int get karbonAyakIzi => (kilometreBasinaUrettigiCO2 / yolcuSayisi).round();

  bool get ikiTekerlekliMi => this == Tasit.bisiklet;

  @override
  int compareTo(Tasit other) => this.karbonAyakIzi - other.karbonAyakIzi;
}

void main(List<String> args) {
  Tasit otomobil = Tasit.otomobil;
  Tasit otobus = Tasit.otobus;
  Tasit bisiklet = Tasit.bisiklet;

  print("Otomobil karbon ayak izi: ${otomobil.karbonAyakIzi}");
  print("Otobüs karbon ayak izi: ${otobus.karbonAyakIzi}");
  print("Bisiklet karbon ayak izi: ${bisiklet.karbonAyakIzi}");

  print(
      "Otomobil ve Otobüs Karbon ayak izi karşılaştırması: ${otomobil.compareTo(otobus)}");
  print(
      "Otomobil ve Bisiklet Karbon ayak izi karşılaştırması: ${otomobil.compareTo(bisiklet)}");
  print(
      "Otobus ve Bisiklet Karbon ayak izi karşılaştırması: ${otobus.compareTo(bisiklet)}");

  print("Otomobil iki tekerlekli mi: ${otomobil.ikiTekerlekliMi}");
  print("Bisiklet iki tekerlekli mi: ${bisiklet.ikiTekerlekliMi}");
}
