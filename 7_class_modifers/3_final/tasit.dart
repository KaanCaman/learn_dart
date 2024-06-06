///
/// [final] modifieri kullanmıs bir Ust sinif  kalıtım almak 
/// üst sınıfın bulundugu dosyada alt sınıflar 
/// [final] ,[base] ve [sealed] modifier ile olusturulur

final class Tasit {
  void ileriGit(int metre) {
    print("Tasit $metre metre ileri gitti.");
  }
}
/* 
///! Hata : Bu sınıf [final] olarak işaretlenmiş ve bu nedenle miras alınamaz.
class B extends Tasit {}

 */
/* 
///! Hata : Bu sınıf [final] olarak işaretlenmiş ve bu nedenle implemente edilemez.
base class C implements Tasit {}

 */


base class Araba extends Tasit {
  Araba() {
    print("Araba sınıfı Tasit sınıfından extends ile oluşturuldu.");
  }
}

final class Otobus extends Tasit {
  Otobus() {
    print("Otobus sınıfı Tasit sınıfından implements ile oluşturuldu.");
  }
}

sealed class Bisiklet extends Tasit {
  Bisiklet() {
    print("Bisiklet sınıfı Tasit sınıfından extends ile oluşturuldu.");
  }
}


final class Sedan extends Araba {
  Sedan() {
    print("Sedan sınıfı Araba sınıfından extends ile oluşturuldu.");
  }
}

final class Minivan extends Otobus {
  Minivan() {
    print("Minivan sınıfı Otobus sınıfından extends ile oluşturuldu.");
  }
}

final class DagBisikleti extends Bisiklet {
  DagBisikleti() {
    print("Dağ Bisikleti sınıfı Bisiklet sınıfından extends ile oluşturuldu.");
  }
}