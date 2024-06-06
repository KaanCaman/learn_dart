
/// Vehicle class
/// 
/// Vehicle class hız bilgisini tutar.
/// Vehicle class hız bilgisini almak ve değiştirmek için getter ve setter içerir.
class Vehicle {
  int _speed;

  // Constructor
  Vehicle(int speed) : _speed = speed;

  // speed getter
  int get speed => _speed;

  // speed setter
  set speed(int value) {
    if (value >= 0) {
      _speed = value;
    }
  }
}