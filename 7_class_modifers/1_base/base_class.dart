///
/// # Base modifier
///
///
/// [base] sınıf değiştiricisi (modifier),
///   Dart programlama dilinde bir sınıfın veya [mixin]'in (karışık sınıf)
///   miras kalıtım kurallarını güçlendirmek için kullanılır.
///   Bunu basitçe şöyle düşünebilirsiniz:
///     [base] ile işaretlenen bir sınıf veya [mixin],
///     kendi kütüphanesi dışındaki kodlar tarafından sadece miras yoluyla kullanılabilir.
///     Yani, başka bir kütüphane bu sınıfı veya mixin'i kendi başına uygulayamaz.
///
/// Bu sayede [base] sınıf değiştiricisi (modifier) şunları garanti eder:
///   Alt sınıflar (türeyen sınıflar) her oluşturulduğunda,
///     asıl sınıfın (base class) kurucusu mutlaka çağrılır.
///
///   Asıl sınıftaki tüm özel üyeler (private members) alt sınıflarda da bulunur.
///
///   Asıl sınıfta yeni bir özellik eklendiğinde,
///     bu özellik alt sınıfları bozmaz.
///     Çünkü alt sınıflar otomatik olarak yeni özelliği miras alır.
///     Ancak, alt sınıf zaten aynı isimde ve uyumsuz
///     bir imzaya sahip bir özellik tanımlamışsa bu durum geçerli değildir.
///
///
///   Onemli not:
///     base ile işaretlenen bir sınıfı veya mixin'i miras alan veya
///     onu genişleten herhangi bir sınıfı da [base], [final] veya [sealed] olarak işaretlemelisiniz.
///     Bu, dış kütüphanelerin base sınıfının garanti ettiği kuralları bozmasını engeller.
///
///   [base] ile miras kurallarını sıkılaştırır ve dışarıdan müdahaleyi önler.
///   Bu sayede kod stabilitesi ve güvenliği artar.
///

base class Tasit {
  Tasit() {
    print("base Tasit Sinifi Olusturuldu.");
  }
  void ileriGit() {
    print("Arac ileri gidiyor");
  }
}

/* 
///! Hata : Bu sınıf [base], [sealed] veya [final] olarak işaretlenmemiş ve bu nedenle miras alınamaz.
class Araba extends Tasit {
  void moveBackward() {
    print("Arac geri gidiyor");
  }
}

///! Hata : Bu sınıf [base], [sealed] veya [final] olarak işaretlense bile implemente edilemez.
base class Araba implements Tasit {
  void moveBackward() {
    print("Arac geri gidiyor");
  }
}

///! Hata : Bu sınıf [base], [sealed] veya [final] olarak işaretlense bile mixin olmadığı için with ile kullanılamaz.
base class Araba with Tasit {
  void moveBackward() {
    print("Arac geri gidiyor");
  }
} 
*/

base class Araba extends Tasit {
  Araba() {
    print("Araba Sinifi Olusturuldu.");
  }
  void geriGit() {
    print("Araba geri gidiyor");
  }
}

base class Sedan extends Araba {
  Sedan() {
    print("Sedan Sinifi Olusturuldu.");
  }

  void sagaGit() {
    print("Sedan saga gidiyor");
  }
}

base class Hatchback extends Sedan {
  Hatchback() {
    print("Hatchback Sinifi Olusturuldu.");
  }

  void solaGit() {
    print("Hatchback sola gidiyor");
  }
}

void main(List<String> args) {
  Araba araba = Araba();
  araba.ileriGit();
  araba.geriGit();

  Sedan sedan = Sedan();
  sedan.ileriGit();
  sedan.geriGit();

  Hatchback hatchback = Hatchback();
  hatchback.ileriGit();
  hatchback.geriGit();
  hatchback.sagaGit();
  hatchback.solaGit();
}
