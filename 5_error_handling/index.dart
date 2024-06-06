/// # Error Handling
///
/// Hata yönetimi, uygulamanızın hatalarla nasıl başa çıkacağını belirlemenize olanak tanır.
/// Dart, hata yönetimi için try-catch bloklarını kullanır.
/// Bir try bloğu, hata olasılığı olan kodu içerir ve catch bloğu,
/// hata oluştuğunda çalıştırılacak kodu içerir.

void main(List<String> args) {
  // basitHataFirlat();

  try {
    // basitHataFirlat();
    // formatHatasiFirlat();
    hataCikacakFonksiyon();
  } on String catch (e) {
    print("String hatası: $e");
  } on FormatException catch (e) {
    print("Format hatası: $e");
  } catch (e, s) {
    print("Error: $e ${e.runtimeType}");
    print("StackTrace : $s");
  } finally {
    print("Hata çıksa da Çıkmasa da çalışır.");
  }
}

void basitHataFirlat() {
  throw "Bu bir basit hatadır";
}

void formatHatasiFirlat() {
  throw FormatException("Format hatasi olustu.");
}

void hataCikacakFonksiyon() {
  try {
    final sonuc = 5 ~/ 0;
    print("sonuc : $sonuc ");
  } catch (e) {
    rethrow;
  }
}
