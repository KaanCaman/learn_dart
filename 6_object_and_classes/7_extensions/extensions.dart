/// # Extension Metotlar
/// 
/// Extension metot nedir:
///   Dart'ta var olan sınıflara 
///   yeni fonksiyonlar, getter'lar, setter'lar ve statik üyeler 
///   eklemenizi sağlayan bir özelliktir. 
///   Bu sayede, kütüphanelerdeki mevcut sınıfları 
///   değiştirmeden onlara yeni işlevler ekleyebilirsiniz.
/// 
/// Extension metotlar ne işe yarar:
///   Kütüphanelerdeki mevcut sınıfları değiştirmeden onlara yeni işlevler ekleyebilirsiniz.
///   Kodunuzu daha okunabilir ve organize hale getirebilirsiniz.
///   Core sınıflara yeni işlevler ekleyebilirsiniz.
///   Kod üretiminde kullanılabilir.
/// 
/// Extension metotlar:
///   sınıfları değiştirmeden yeni işlevler eklemenin kullanışlı bir yoludur.
///   kodunuzu daha okunabilir ve organize hale getirebilir.
///   generikleri ve adlandırmayı destekler.
/// 


// basit bir stringi int'e çeviren extension metot

// String sınıfnın üzerine yazılan bir extension metot
// bu metot sayesinde String sınıfına ait bir nesne üzerinden
// toInt() metotu çağrılabilir.
// Bu metot string bir değeri int'e çevirir.
extension StringiInteCevir on String {

  // String nesneyi int'e çeviren metot
  int toInt() {
    return int.parse(this);
  }

  // String nesneyi double'a çeviren metot
  double toDouble() {
    return double.parse(this);
  }
}

extension BenimListeExtensionMetotlarim<T> on List<T> {
  // liste uzunluğunun iki katını döndüren extension metot
  int get listeUzunlugununIkiKati => this.length * 2;

  // liste elemanlarını - işlemi ile ters çeviren extension metot
  List<T> operator -() => reversed.toList(); 

  // Listeyi verdiğimiz indexe göre ikiye ayıran extension metot
  List<List<T>> ayir(int index) => [this.sublist(0, index), this.sublist(index)];
}


void main(List<String> args) {
  // StringiInteCevir extension metotlarını kullanma
  String sayi = "5";
  print(sayi.toInt());
  print(sayi.toDouble());

  // BenimListelerim extension metotlarını kullanma
  List<int> sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(sayilar.listeUzunlugununIkiKati);
  print(-sayilar);
  print(sayilar.ayir(5));
}