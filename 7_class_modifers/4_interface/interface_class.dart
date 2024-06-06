/// # Interface modifier
///
/// Dart aslında arayüz (interface) kavramını doğrudan desteklemiyor.
///   Fakat interface anahtar kelimesini kullanarak benzer bir yapı oluşturabilirsiniz.
///   Bu yapıya genelde "[abstract interface class]".
///
/// [interface] ile neler elde edersiniz?
///
/// Sözleşme Tanımlama:
///   interface ile bir sınıfın ne yapması gerektiğini
///     (hangi methodlara sahip olması gerektiğini) tanımlarsınız.
///   Bu, bir sözleşme gibi çalışır ve farklı kütüphanelerden
///   gelen sınıflar bu sözleşmeyi uygulayarak sizin tanımladığınız methodları implement edebilirler.
///
/// Miras Engelleme:
///   Dışarıdan gelen kütüphaneler interface ile işaretlenen sınıfı miras alamazlar (extend).
///   Sadece onu implemente edebilirler. Bu, sınıfın yapısının korunmasını sağlar.
///
/// Abstract Interface:
///   En yaygın kullanım [interface] ile birlikte [abstract] anahtar kelimesini kullanmaktır.
///   Bu durumda "abstract interface class" veya "implicit interface" (açık arayüz) elde edersiniz.
///   Bu, yukarıdaki örneğin aynısıdır. Sadece [abstract] keyword'u ek olarak soyut methodlar tanımlayabilirsiniz.
///
/// Ozet :
///   Dart'ta gerçek anlamda bir arayüz (interface) yok
///   ama interface ve abstract keyword'lerini kullanarak benzer bir yapı oluşturabilirsiniz.
///   Bu yapılar sayesinde sözleşmeler tanımlayarak
///   kodun farklı kütüphaneler arasında
///   daha güvenli ve anlaşılır bir şekilde çalışmasını sağlayabilirsiniz.
///
///
///

void main(List<String> args) {
  // Interface class modifier kullanımı
  Tasit tasit = Tasit(renk: "Siyah");
  print(tasit.renk);
  tasit.ileriGit(10);

  Tasit araba = Araba(renk: "Yesil");
  print(araba.renk);
  araba.ileriGit(20);
  //
  print("***" * 100);

  // abstract interface class kullanımı

  // !Hata : abstract interface class'ı  ile instance oluşturamazsınız.
  // Authentication auth = Authentication();

  // extends edildiği için Authentication sınıfnın coutstructor'ı çalışır.
  Authentication user = User();
  user.login();
  user.logout();

  Authentication admin = Admin();
  admin.login();
  admin.logout();
}

// Basit interface class kullanımı
interface class Tasit {
  // Renk [null] olablir.
  String? renk;

// interface class'ın constructor'ı olablir
  Tasit({this.renk}) {
    print("Tasit constructor");
  }

  //! Hata : fonksiyon gövdesi olmak zorunda. Bu bir soyut sınıf değil
  // void geriGit(int metre);

  void ileriGit(int metre) {
    print("Tasit $metre metre ileri gitti.");
  }
}

class Araba implements Tasit {
  @override
  String? renk;

  Araba({this.renk});

  @override
  void ileriGit(int metre) {
    print("Araba $metre metre ileri gitti.");
  }
}

// Abstract interface class kullanımı
abstract interface class Authentication {
  void login();
  void logout();

  Authentication() {
    print("Authentication constructor");
  }
}

// Abstract interface class extends edilebilir.
class User extends Authentication {
  @override
  void login() {
    print("User login");
  }

  @override
  void logout() {
    print("User logout");
  }
}

// Abstract interface class implents edilebilir.
class Admin implements Authentication {
  @override
  void login() {
    print("Admin login");
  }

  @override
  void logout() {
    print("Admin logout");
  }
}
