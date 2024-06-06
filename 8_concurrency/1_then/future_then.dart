// https://dart.dev/language/concurrency
/// # Then kavrami
///   Dart programlama dilinde bir olay döngüsü vardır.
///   Bu olay döngüsü, programın çalıştığı süre boyunca birçok işlemi gerçekleştirir.
///   Bu işlemler arasında bir işlem tamamlanmadan diğer işlemler başlamaz.
///   Bu durumda programın performansı düşer.
///   Bu durumu aşmak için `Future` sınıfı kullanılır.
///   `Future` sınıfı, bir işlemi başlatır ve işlem tamamlandığında bir değer  döndürür.
///   Bu değeri almak için `then` metodu kullanılır.
///
///
///  Ornek:
///   Gerçek hayattan bir örnek vermek gerekirse,
///   Anne sofrayı hazırlarken ekmekğin eksik olduğunu fark eder.
///   Çocuğu ekmek almaya gönderir.
///   Çocuk ekmek almaya gider bu uzun süren bir işlemdir.
///   Anne bu süre zarfında başka işlerle ilgilenir. ve o işleri bitiirir.
///   Çocuk ekmek alıp eve döner.
///
/// Kısaca :
///   Anne ekmek almak için cocoğu gönderdiğin de diğer işleri yapmaya devam etmiştir.
///   çocugun ekmek almasını beklemememiştir.
///   çocuk ekmeği alıp döndüğünde sofra hazırlanmıştır.
///
///  Then yapısı Gelecek işlemlerinde
///   ilerleyen olay akışın da değil
///   başka bir yer de işlemi yapar
///   işlem tammaıldığında
///   olay akışının o anki yerin de olay akışına dahil olur.
///

void main() {
  print("Anne Sofrayı Hazırlar.");
  print("Sofrada ekmek eksiktir. Çocuğa ekmek almaya gönderilir.");

  Future<String> cocukEkmekAl = ekmekAlmayaGit();

  cocukEkmekAl.
      // işlemin tamamlanmasını bekler
      then((String value) {
    print("Çocuk: $value");
    print("Çocuk ekmekle eve döner.");
  }).
      // Bir Hata oluştuğunda
      catchError((hata) {
    print("Hata oluştu: $hata");
  }).

      // Her durumda çalışır
      whenComplete(() {
    print("Bu blok hata alınsa da alınmasa da çalışır.");
  });

  ;

  print("Anne Çayı demler.");
  print("Anne sofrayı hazırlamıştır.");
}

Future<String> ekmekAlmayaGit() {
  return Future.delayed(Duration(seconds: 3), () {
    // throw Exception("Bakkalda ekmek yok.");
    return "Ekmek alındı";
  });
}
