// ignore_for_file: unnecessary_type_check

import "tasit.dart";
import "ucak.dart";
import "tren.dart";

/// Soru 1 :
///   Tasit isimli bir sınıf oluşturun
///   ve içerisine cinsi, modeli ve üretim yılı bilgilerini tutacak değişkenler ekleyin.
///   Ayrıca bu sınıfa bilgiVer adında bir fonksiyon ekleyin
///   ve bu fonksiyon ile cinsi, modeli ve üretim yılı bilgilerini ekrana yazdırın.
///   Bu sınıfı soyut sınıf olarak tanımlayın ve diğer sınıfların bu sınıftan kalıtım almasını sağlayın.
///
///  QUESTION 1:
///   Create a class named Vehicle
///   and add variables to hold the type, model, and production year information.
///   Also add a function named showInfo to this class
///   and print the type, model, and production year information to the screen with this function.
///   Define this class as an abstract class and make other classes inherit from this class.
///
///
/// Soru 2 :
///   Hareket isimli soyut bir sınıf oluşturun ve içerisine kalkisYap, hizlan ve dur adında metotlar ekleyin.
///   Bu metotları soyut olarak tanımlayın ve diğer sınıfların bu sınıftan kalıtım almasını sağlayın.
///
/// QUESTION 2:
///   Create an abstract class named Movement and add methods named takeOff, accelerate, and stop.
///   Define these methods as abstract and make other classes inherit from this class.
///
///
/// Soru 3 :
///   Durum isimli soyut bir mixin oluşturun ve içerisine yolcuSayisiGoster ve yukseklikGoster adında metotlar ekleyin.
///   Bu metotları soyut olarak tanımlayın ve diğer sınıfların bu sınıftan kalıtım almasını sağlayın.
///
/// QUESTION 3:
///   Create an abstract mixin named Status and add methods named showPassengerCount and showHeight.
///   Define these methods as abstract and make other classes inherit from this class.
///
///
///
/// Soru 4 :
///   Ucak ve Tren isimli sınıflar oluşturun ve Tasit sınıfından kalıtım almasını sağlayın.
///   Ayrıca Hareket ve Durum sınıflarından kalıtım almasını sağlayın.
///
/// QUESTION 4:
///   Create classes named Plane and Train and make them inherit from the Vehicle class.
///   Also make them inherit from the Movement and Status classes.
///
///
/// Soru 5 :
///   Ucak ve Tren sınıflarına yolcuSayisi adında bir değişken ekleyin ve getter setter metotlarını tanımlayın.
///
/// QUESTION 5:
///   Add a variable named passengerCount to the Plane and Train classes and define getter setter methods.
///

void main(List<String> args) {
  Tren tren = Tren("Tren", "Yolcu Treni", 2001);
  Ucak ucak = Ucak("Uçak", "Boeing", 2011);
  tren.yolcuSayisi = 650;
  tren.yolcuSayisiGoster();
  tren.dur();
  tren.hizlan();
  tren.bilgiVer();

  print("\n${"*" * 100}\n");

  ucak.yolcuSayisi = 800;
  ucak.kalkisYap();
  ucak.dur();
  ucak.yolcuSayisiGoster();
  ucak.bilgiVer();

  print("Tren bir taşıt mı ? : ${tren is Tasit}");
  print("Ucak bir taşıt mı ? : ${ucak is Tasit}");
}
