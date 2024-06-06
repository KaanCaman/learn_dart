const int xOrigin = 0;
const int yOrigin = 0;
const int zOrigin = 0;

/// Point2D classı x ve y koordinatlarını tutar.
/// Point2D classı 2 boyutlu bir noktayı temsil eder.
/// Point2D classı x ve y değerlerini alarak nesne oluşturur.
/// Point2D classı x ve y değerlerini yazdırmak için toString metodu içerir.
/// Point2D classı x değerini alarak y değerini 0 olarak atamak için isimlendirilmiş constructor içerir.
class Point2D {
  double x, y;

  /// Constructor
  Point2D(this.x, this.y);

  /// Ana Kurucuyu Kullanarak İsimlendirilmiş Constructor
  Point2D.alongXAxis(double x) : this(x, 0);

  @override
  String toString() {
    return "Point2D(x: $x, y: $y)";
  }
}

/// Point3D classı x,y ve z koordinatlarını tutar.
/// Point3D classı 3 boyutlu bir noktayı temsil eder.
/// Point3D classı x,y ve z değerlerini alarak nesne oluşturur.
/// Point3D classı x,y ve z değerlerini yazdırmak için printPoint metodu içerir.
/// Point3D classı boş nesne oluşturmak için empty isimlendirilmiş constructor içerir.
/// Point3D classı x ve y değerlerini 0 olarak atamak için origin isimlendirilmiş constructor içerir.
class Point3D {
  int? x;
  int? y;
  late int? z;

  /// Constructor
  /// Bu constructor ile nesne oluşturulduğunda x, y ve z değerleri alınır.
  Point3D(this.x, this.y, this.z) {
    print("Point nesnesi oluşturuldu.");
  }

  void printPoint() {
    print("x: $x, y: $y , z: $z");
  }

  /// Bu isimlendirişmiş constructor ile nesne oluşturulduğunda x , y ve z değerleri null olarak atanır.
  /// Boş nesne oluşturulduğunda çalışacak constructor.
  Point3D.empty()
      : x = null,
        y = null,
        z = null {
    print("Boş nesne oluşturuldu.");
  }

  /// Bu isimlendirilmiş constructor ile nesne oluşturulduğunda x,y ve z değerleri 0 olarak atannır.
  Point3D.origin()
      : x = xOrigin,
        y = xOrigin,
        z = zOrigin {
    print("x ve y değerleri 0 olarak atandı.");
  }
}

/// ImmutablePoint classı x,y ve z değerlerini değiştiremeyeceğimiz bir nesne oluşturmak için kullanılır.
/// Bu nesne oluşturulduğunda x,y ve z değerleri değiştirilemez.
class ImmutablePoint {
  final int x;
  final int y;
  final int z;

  static const ImmutablePoint origin =
      ImmutablePoint(xOrigin, yOrigin, zOrigin);

  const ImmutablePoint(this.x, this.y, this.z);

  @override
  String toString() => "ImmutablePoint($x, $y, $z)";
}
