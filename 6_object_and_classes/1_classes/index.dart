import "vector.dart";
import "point.dart";
import "user.dart";
import "vehicle.dart";

/// Classlar kullanımı
///
/// Dart dilinde nesne tabanlı programlama yapmak için classlar kullanılır.
/// Classlar nesnelerin özelliklerini ve davranışlarını tanımlar.

void main(List<String> args) {
  // Point classından point nesnesi oluşturuldu.
  Point3D point = Point3D(10, 20, null);

  // Point nesnesinin printPoint metodu çağrıldı.
  point.printPoint();

// Point nesnesinin x ve y değerleri yazdırıldı.
  print("Point x değeri: ${point.x}");
  print("Point y değeri: ${point.y}");
  print("Point runtimeType: ${point.runtimeType}");

// point2 nesnesi oluşturuldu. ve bütün değerleri null olarak atandı.
  Point3D point2 = Point3D(null, null, null);
  // point2 nesnesinin x,y ve z değerleri yazdırıldı.
  point2.printPoint();
  // point2 nesnesinin x ,y ve z değerleri atandı
  point2.x = 30;
  point2.y = 40;
  point2.z = 50;
  // point2 nesnesinin x,y ve z değerleri yazdırıldı.
  point2.printPoint();

  // Boş nesne oluşturuldu.
  Point3D point3 = Point3D.empty();
  point3.printPoint();

  // x,y ve z değerleri 0 olarak atandı.
  Point3D point4 = Point3D.origin();
  point4.printPoint();

  // ImmutablePoint classından immutablePoint nesnesi oluşturuldu.
  const immutablePoint = ImmutablePoint(10, 20, 30);
  print(immutablePoint);

  // Point2d classından point2d nesnesi oluşturuldu.
  Point2D point2D = Point2D(10, 20);
  print(point2D);

  // Point2d classından point2d2 nesnesi oluşturuldu.
  Point2D point2D2 = Point2D.alongXAxis(10);
  print(point2D2);

  // User classından user nesnesi oluşturuldu.
  User user = User("Kaan", 21);
  print(user);

  // Facvtory Kullanıumı.
  User user2 = User.fromJson({"name": "Caman", "age": 22});
  print(user2);

  // Nesneleri Toplama , Cıkarma ve Karşılaştırma .
  Vector v = Vector(2, 3);
  Vector w = Vector(2, 2);

  print(v + w == Vector(4, 5));
  print(v - w == Vector(0, 1));

  // Getter ve Setter
  Vehicle vehicle = Vehicle(100);
  print(vehicle.speed);
  vehicle.speed = 120;
  print(vehicle.speed);
}
