/// Records anonim, değişmez bir toplama türüdür. Diğer koleksiyon türleri gibi,
/// birden fazla nesneyi tek bir nesnede bir araya getirmenizi sağlar.
/// Diğer koleksiyon türlerinin aksine, Records sabit boyutlu, heterojen ve tiplidir.
///
/// Records gerçek değerlerdir; onları değişkenlerde saklayabilir,
/// iç içe yerleştirebilir, işlevlere ve işlevlerden geçirebilir ve listeler,
/// eşlemeler ve kümeler gibi veri yapılarında saklayabilirsiniz.

void main(List<String> args) {
  // Record tanımlama
  (String, String, {int a, bool b}) record1 = ('first', a: 2, b: true, 'last');
  print("Record 1 : $record1 \n");

  // Record swap fonksiyonu
  (int, int) record2 = (1, 3);
  print("Record 2 : ${swap(record2)} \n");

  // Record iç içe kullanım
  ((int, int), (int, int)) record3 = ((1, 2), (3, 4));
  print("Record 3 : $record3 \n");

  // Record elemanına erişme $1 $2 $3
  (String, num, bool) record4 = ("First", 2, true);
  print(
      "Record 4 String: ${record4.$1}\nRecord 4 Num: ${record4.$2}\nRecord 4 Bool: ${record4.$3} \n");

  //  isimlendirilmiş Record ve record elemanlarına erişme [name, age]
  ({String name, int age}) record5 = (name: "John", age: 30);
  print("Record5 name : ${record5.name} - Record5 age : ${record5.age}  \n");

  // Record Karşılaştırma == !=

  // isimlendirilmiş record
  ({int x, int y}) record6A = (x: 1, y: 2);
  ({int a, int b}) record6B = (a: 1, b: 2);
  print("Record 6A == Record 6B : ${record6A == record6B}");

  // isimsiz record
  (int, int) record7A = (1, 2);
  (int, int) record7B = (1, 2);
  print("Record 7A == Record 7B : ${record7A == record7B} \n");

  // JSON verisini record'a dönüştürme
  (String name, int age) record8 = userInfo(dummyJson);
  print("Record 8 : $record8");

}

// örnek bir record fonksiyonu
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

final dummyJson = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

// JSON verisini record'a dönüştürme:
(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}


