// https://dart.dev/language/concurrency
/// # Stream kavrami
///   Dart ayrıca akışlar şeklinde asenkron kodu da destekler.
///   Akışlar gelecekte ve zaman içinde tekrarlanan değerler sağlar.
///   ve bu değerlerleri alabilmek için `Stream` sınıfı kullanılır.
///   `Stream` sınıfı, bir değeri veya bir hata durumunu gelecekte döndüren bir nesnedir.
///   `Stream` sınıfı, `Future` sınıfına benzerdir. Ancak `Future` sınıfı yalnızca bir değer döndürürken,
///   `Stream` sınıfı bir değer dizisi döndürebilir.
///   `Stream` sınıfından değer almak için `listen` metodu kullanılır.
///    Stream fonksiyonlarda başlığında  ise  `async*` anahtar kelimesi kullanılır.
///    stream fonksiyonlarda gövdesinde  ise `yield` anahtar kelimesi kullanılır.
///   `yield` anahtar kelimesi ile değerler akışa eklenir.
///   `yield` anahtar kelimesi ile akışa eklenen değerler `listen` metodu ile alınır.
///
///

// Basit bir saniye de bir sayı üreten akış
Stream<int> periyodikSayilarUret() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<int> kurucuIlePeriyodikSayilarUret() {
  return Stream.periodic(Duration(seconds: 1), (int i) => i + 1);
}

Stream<int> sayilariToplamaAkisi(Stream<int> stream) async* {
  int toplam = 0;
  await for (int sayi in stream) {
    toplam += sayi;
    yield toplam;
  }
}

void main() {
  Stream<int> periyodikSayi = periyodikSayilarUret();

  // 10 kadar ürettiğimiz sayıların toplamını canlı olarak gösteren akış
  Stream<int> sayilariToplayanAkis =
      sayilariToplamaAkisi(kurucuIlePeriyodikSayilarUret());

  periyodikSayi.listen((int sayi) {
    print("Periyodik Sayi: $sayi");
  }, 
  // tamamlandıgında yapılacak işlem
  onDone: () {
    print("Periyodik Sayilar Akisi Tamamlandi.");
    sayilariToplayanAkis.listen((int sayi) {
      print("Toplam: $sayi");
    });
  });
}
