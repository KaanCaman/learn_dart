



/// Methodlar

/// operator == metodu ile iki vektörün eşit olup olmadığını kontrol eder.
/// operator + metodu ile iki vektörü toplar.
/// operator - metodu ile iki vektörü çıkarır.

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  /// Başka bir vektör ile toplama işlemi
  Vector operator +(Vector v) {
    return Vector(x + v.x, y + v.y);
  }

  /// Başka bir vektör ile çıkarma işlemi
  Vector operator -(Vector v) {
    return Vector(x - v.x, y - v.y);
  }

  /// Başka bir vektör ile karşılaştırma işlemi
  @override
  bool operator ==(Object other) {
    if (other is Vector) {
      return x == other.x && y == other.y;
    }
    return false;
  }
}



