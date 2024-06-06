/// Callable Objects:
///   Dart'ta normalde sınıfları fonksiyon gibi kullanamazsın.
///   Ama sihirli bir method ile bunu mümkün kılmak var! Bu method adı ise [call]
///
///   [call] methodu, bir sınıfı sanki fonksiyonmuş gibi çağırmanı sağlar.
///   tıpkı normal fonksiyonlar gibi parametre alabilir ve değer döndürebilir.
///
/// Örneğin,
///   [SihirliFonksiyon] sınıfı tanımlanıyor.
///   [call] methodu,
///   üç kelime alan ve onları birleştiren bir mesaj dönüyor.
///   [sf] değişkenine [SihirliFonksiyon] sınıfından bir nesne oluşturuluyor.
///   [sf] üzerinden call methodu "Kaan", "Caman" ve "Nasılsın?" kelimeleriyle çağrılıyor.
///   Sonuç [cikti] , [cikti2] değişkenlerine atanıyor.
///   main methodu  içinde oluşturulan [cikti] ve [cikti2] değişkenlerinin değerini yazdırıyor.

class SihirliFonksiyon {
  String call(String ad, String soyad, String mesaj) {
    return "Merhaba $ad $soyad,\nMesajın:$mesaj";
  }
}

void main(List<String> args) {
  final sf = SihirliFonksiyon();
  final String cikti = sf("Kaan", "Caman", "Nasılsın?");
  final String cikti2 = SihirliFonksiyon()("Caman", "Kaan", "iyi ben sen ?");
  print(cikti);
  print(cikti2);
}
