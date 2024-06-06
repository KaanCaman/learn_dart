/// Polimorfizm: 
///   nesneye yönelik programlamanın önemli kavramlarından biridir ve 
///   sözlük anlamı olarak "bir çok şekil" anlamına gelmektedir.
///   Polimorfizm ile kalıtım konusu iç içedir.
///   Kalıtım konusunu geçen bölüm incelenmişti; kalıtım konusunda iki taraf bulunmaktadır,
///   ana sınıf ve bu sınıftan türeyen alt sınıf/sınıflar.
///
///   Alt sınıf, türetildiği ana sınıfa ait tüm özellikleri alır;
///   yani, ana sınıf ne yapıyorsa türetilen alt sınıfta bu işlemlerin aynısını yapabilir
///   ama türetilen alt sınıfların kendilerine ait bir çok yeni özelliği de olabilir.
///   Ayrıca türetilen alt sınıfa ait nesnenin, 
///   ana sınıf tipindeki referansa bağlamanın yukarı doğru (upcasting) işlemi denir.
///
/// Aşağıdaki örnekte üç  kavram mevcuttur,
///  bunlardan biri yukarı çevirim (upcasting)
///  diğeri polimorfizm
///
/// Şimdi yukarı çevirim ve polimorfizm kavramlarını açıklayalım.

void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı cevrim

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);
  tumUserlar.add(user4);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);
  test(user6);
}

void test(User kullanici) {
  kullanici.girisYap(); //polimorfizm çok biçimlilik
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("SadeceOkuyabilenNormalUser giriş yaptı");
  }
}

class AdminUser extends User {
  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }

  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }
}
