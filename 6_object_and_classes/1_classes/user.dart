
/// User class 
/// Factroy constructor, sınıfın nesne oluşturulmasını kontrol etmek için kullanılır.
class User {
  final String name;
  final int age;

  User(this.name, this.age) {
    print("User nesnesi oluşturuldu.");
  }

  factory User.fromJson(Map<String, dynamic> json) {
    print("User.fromJson çalıştı.");
    return User(json["name"], json["age"]);
  }

  @override
  String toString() {
    return "User(name: $name, age: $age)";
  }
}