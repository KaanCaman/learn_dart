/// # Nullable Type Parameters Generic
///
///  Generic tipleri belirtirken de nullable ve non-nullable kavramları geçerlidir.
///  Burda önemli olan ? nereye koydugumuzdur.
///
///  Liste null olabilir diyorsak List<String>?,
///  listenin bazı elemanları null olabilir diyorsak List<String?> diye belirtebiliriz
///
main(List<String> args) {
  List<String> stringListesi = ['kaan', 'hasan', 'ali'];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringleriTutanListe = ['kaan', null, 'hasan'];

  print('string listesi $stringListesi');
  print('null olabilecek liste $nullOlabilecekStringListesi');
  print(
      'nullOlabilecekStringleriTutanListe $nullOlabilecekStringleriTutanListe');
}
