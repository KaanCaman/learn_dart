import 'tasit.dart';

/// # Final modifier
/// [final] sınıf değiştiricisi (modifier),
///   Dart programlama dilinde bir sınıfın miras alınmasını tamamen engellemek için kullanılır.
///   Bu sayede, sınıfın yapısını ve işlevlerini dışarıdan gelen müdahalelerden koruyabilirsiniz.
///
///
/// final ile neler elde edersiniz?
///   Kapalı Miras Hiyerarşisi:
///     final ile işaretlenen bir sınıfın dışarıdan (farklı kütüphanelerden) alt sınıfları oluşturulamaz.
///     Bu, sınıfın yapısının ve davranışının sizin kontrolünüzde kalmasını sağlar.
///
///   Güvenli API Değişiklikleri:
///     Sınıfa yeni özellikler veya methodlar eklediğinizde,
///     dışarıdaki kodların bozulmayacağından emin olabilirsiniz.
///     Çünkü kimse sizin sınıfınızı miras alıp değiştiremez.
///
///   Tahmin Edilebilir Davranış:
///     Bir final sınıfından instance oluşturduğunuzda,
///     o instance'ın methodlarının asla sizin
///     kontrolünüz dışındaki bir alt sınıf tarafından yeniden yazılmayacağını bilirsiniz.
///     Bu da kodunuzun daha tahmin edilebilir ve güvenli olmasını sağlar.
///
///   final class sadece aynı dosya içerisinde kullanılabilir.
///   [base] , [sealed] ve [final] modifierler ile [final] sınıftan kalıtım alınabilir.
///   Bu nedenle, final class'lar genellikle küçük ve özel sınıflar için kullanılır.

// [Tasit] sınıfından instance oluşturulabilir
Tasit tasit = Tasit();

void main(List<String> args) {
  Tasit tasit = Tasit();
  tasit.ileriGit(10);

  Tasit araba = Araba();
  araba.ileriGit(20);

  Tasit otobus = Otobus();
  otobus.ileriGit(30);

  // Tasit bisiklet = Bisiklet(); //! Hata: Bisiklet sınıfı [sealed] ile işaretlendiği için instance oluşturulamaz.
  // Bisiklet sınıfını Kalıtım Alan [DagBisikleti] Sınıfından Instance Oluşturulabilir
  Tasit bisiklet = DagBisikleti();
  bisiklet.ileriGit(40);

  Tasit sedan = Sedan();
  sedan.ileriGit(50);

  Tasit minivan = Minivan();
  minivan.ileriGit(60);
}
