/// Hareket sınıfı soyut sınıf olarak tanımlanmlayıp.
/// [Hareket] sınıfından kalıtım alan sınıflar bu metotları override ederek kullanabilir.
/// [Hareket] sınıfından kalıtım alan sınıfların fonksiyonları override edilmesi zorunludur.
/// [kalkisYap], [hizlan], [dur] metotları tanımlanmıştır.
/// bu fonksiyonların gövdelerini implemente yapan sınıfların kendi gövdelerini tanımlaması gerekmektedir.
abstract class Hareket {
  void kalkisYap();
  void hizlan();
  void dur();
}
