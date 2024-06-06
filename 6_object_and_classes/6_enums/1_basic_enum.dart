/// Genellikle numaralandırma veya enum olarak adlandırılan numaralandırılmış türler,
/// sabit sayıda sabit değeri temsil etmek için kullanılan özel bir sınıf türüdür.

// enumları olustur
enum Durumlar { none, running, stopped, paused }

enum KurabiyeTuru { chocolate, vanilla, strawberry }

enum BuyukSehirler { istanbul, ankara, izmir }

void main(List<String> args) {
  Durumlar s = Durumlar.running;
  // ekrana s değişkenini yazdır
  print(s);
  // ekranan s değişkeninin indexini yazdır
  print(s.index);

  // ekrana s değişkeninin string değerini yazdır
  print(s.name);

  // bütün Status enum değerlerini yazdır
  print(Durumlar.values);

  // Status enum değerlerinden 2. indexte bulunanı yazdır
  print(Durumlar.values[2]);

  // enumları kontrol etme işlemi - switch case
  KurabiyeTuru k = KurabiyeTuru.chocolate;

  switch (k) {
    case KurabiyeTuru.chocolate:
      print("Çikolatalı kurabiye");
      break;
    case KurabiyeTuru.vanilla:
      print("Vanilyalı kurabiye");
      break;
    case KurabiyeTuru.strawberry:
      print("Çilekli kurabiye");
      break;
  }
  // enumları kontrol etme işlemi - if else

  BuyukSehirler b = BuyukSehirler.ankara;

  if (b == BuyukSehirler.istanbul) {
    print("İstanbul");
  } else if (b == BuyukSehirler.ankara) {
    print("Ankara");
  } else if (b == BuyukSehirler.izmir) {
    print("İzmir");
  }
}
