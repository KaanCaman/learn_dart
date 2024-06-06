/// Tasit Sınıfı soyut sınıf olarak tanımlanmlayıp.
/// diğer sınıflardan kalıtım alınacak metotları belirledik.
/// [cinsi], [modeli], [uretimYili] değerlerini alarak
/// [bilgiVer] metotu ile ekrana yazdırma işlemi yapar.
/// bu sınıfta nesne oluşturulamaz.
abstract class Tasit {
  String _cinsi, _modeli;
  int _uretimYili;

  Tasit(this._cinsi, this._modeli, this._uretimYili);

  // getter metotları

  /// Tasit cinsini döndürür. [String] türünde değer döner.
  String get cinsi => _cinsi;

  /// Tasit modelini döndürür. [String] türünde değer döner.
  String get modeli => _modeli;

  /// Tasit üretim yılını döndürür. [int] türünde değer döner.
  int get uretimYili => _uretimYili;

  void bilgiVer() => print(
      "Taşıt\n cinsi: $_cinsi\n modeli: $_modeli\n üretim yılı: $_uretimYili");
}
