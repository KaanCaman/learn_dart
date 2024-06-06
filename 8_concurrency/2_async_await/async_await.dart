// https://dart.dev/language/concurrency
/// # async - await kavramı
/// - Dart dilinde asenkron programlama yaparken kullanılan bir yapıdır.
/// - `async` anahtar kelimesi bir fonksiyonun asenkron olduğunu belirtir.
/// - `await` anahtar kelimesi ise bir fonksiyonun sonucunu beklemek için kullanılır.
/// - `await` anahtar kelimesi sadece `async` fonksiyonlar içinde kullanılabilir.
/// - `await` anahtar kelimesi sadece `Future` sınıfı döndüren fonksiyonlarda kullanılabilir.
/// - `await` anahtar kelimesi bir işlem tamamlanana kadar diğer işlemleri bekletir.
/// - `await` anahtar kelimesi ile işlem tamamlandığında işlem sonucunu alabiliriz.
/// - `await` anahtar kelimesi ile işlem tamamlandığında hata alırsak `try-catch` yapısı ile hatayı yakalayabiliriz.
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
///  async-await yapısı Gelecek işlemlerinde
///   ilerleyen olay akışını durdurur. işlemi bekler.
///   işlem tamamlandığında olay akışını devam ettirir.
///
Future<void> main() async {
  print("Anne Sofrayı Hazırlar.");
  print("Sofrada ekmek eksiktir. Çocuğa ekmek almaya gönderilir.");
  late String cocukEkmekAl;

  try {
    // Cocugun Ekmek Almasını bekleyeceğiz.
    cocukEkmekAl = await ekmekAlmayaGit();
  } catch (e) {
    cocukEkmekAl = e.toString();
    print("Hata oluştu: $e");
  }

  print("Çocuk: $cocukEkmekAl");

  print("Anne Çayı demler.");
  print("Anne sofrayı hazırlamıştır.");
}

Future<String> ekmekAlmayaGit() async {
  await Future.delayed(Duration(seconds: 3));
  // throw Exception("Bakkalda ekmek yok.");
  return "Ekmek alındı.";
}
