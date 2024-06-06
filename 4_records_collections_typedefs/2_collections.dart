///
/// # Collections
/// Dart liste , set ve map yapılarına sahiptir.
/// Bu yapılar içerisinde birden fazla veriyi saklamamızı sağlar.
/// List yapısı sıralı veri saklamamızı sağlar.
/// Set yapısı benzersiz (uniq) veri saklamamızı sağlar.
/// Map yapısı key-value şeklinde veri saklamamızı sağlar.
/// Dart'ta bu yapılar için bir çok operator ve method bulunmaktadır.
/// Ayrıca bu yapılar için farklı constructorlar bulunmaktadır.
/// Bu yapılar hakkında daha fazla bilgi almak için aşağıdaki konulara bakınız.
///
/// - List
/// - Set
/// - Map
/// - Operators
/// - Methods
/// - Constructors
///
/// Dart dilinde bu yapılar generic yapıdadır. Yani bu yapılar içerisinde
/// sadece belirli bir tip veri saklamamızı sağlar.
/// Örneğin:
///   List<int>
///   Set<String>
///   Map<String,int>
///
/// sadece int tipinde veri saklamamızı sağlar.
/// Bu yapılar içerisinde farklı tipte veri saklamak için dynamic tipini kullanabiliriz.
/// Ancak bu durumda tip güvenliğini kaybetmiş oluruz.
///

void main(List<String> args) {
  // Liste işlemleri
  lists();

  // Set işlemleri
  sets();

  // Map işlemleri
  maps();
}

// Listeler
void lists() {
  // Listeler sıralı veri saklamamızı sağlar.
  // List yapısı birden fazla veriyi saklamamızı sağlar.
  // List yapısı generic yapıdadır. Yani sadece belirli bir tip veri saklamamızı sağlar.
  // List yapısı içerisinde farklı tipte veri saklamak için dynamic tipini kullanabiliriz.
  // Ancak bu durumda tip güvenliğini kaybetmiş oluruz.

  // bir liste tanımlıyoruz.
  var list1 = [1, 2, 3, 4, 5];
  print(list1);

  // List<int> tipinde bir liste tanımlıyoruz.
  List<int> list2 = [1, 2, 3, 4, 5];
  print(list2);

  // List<String> tipinde bir liste tanımlıyoruz.
  List<String> list3 = ['Ali', 'Veli', 'Deli'];
  print(list3);

  // List<dynamic> tipinde bir liste tanımlıyoruz.
  List<dynamic> list4 = [1, 'Ali', 3.14, false];
  print(list4);

  // List operatorleri

  // [] operatorü ile liste elemanlarına erişebiliriz.
  print(list1[0]);

  // []= operatorü ile liste elemanlarını değiştirebiliriz.
  list1[0] = 10;
  print(list1);

  // + operatorü ile iki listeyi birleştirebiliriz.
  var mergeList = list1 + list2;
  print(mergeList);

  var otherList = [6, 7, 8, 9, 10];
  // .. operatorü ile bir listeye birden fazla işlem yapabiliriz.
  otherList
    ..add(11)
    ..add(12)
    ..add(13);

  // ... operatorü ile bir listeyi başka bir listeye ekleyebiliriz.
  var newList = [1, 2, 3, ...otherList];
  print(newList);

  // ...? operatorü ile bir listeyi başka bir listeye eklerken null kontrolü yapabiliriz.
  List<int>? nullableList;
  var nullableNewList = [1, 2, 3, ...?nullableList];
  print(nullableNewList);

  // List methods

  // add() methodu ile bir eleman ekleyebiliriz.
  list1.add(6);
  print(list1);

  // insert() methodu ile belirli bir index'e eleman ekleyebiliriz.
  list1.insert(0, 0);
  print(list1);

  // remove() methodu ile belirli bir elemanı silebiliriz.
  list1.remove(0);
  print(list1);

  // removeAt() methodu ile belirli bir index'teki elemanı silebiliriz.
  list1.removeAt(0);
  print(list1);

  // removeLast() methodu ile son elemanı silebiliriz.
  list1.removeLast();
  print(list1);

  // removeRange() methodu ile belirli bir aralıktaki elemanları silebiliriz.
  list1.removeRange(0, 2);
  print(list1);

  // removeWhere() methodu ile belirli bir koşulu sağlayan elemanları silebiliriz.
  list1.removeWhere((element) => element % 2 == 0);
  print(list1);

  // retainWhere() methodu ile belirli bir koşulu sağlayan elemanları tutabiliriz.
  list1.retainWhere((element) => element % 2 == 0);
  print(list1);

  // clear() methodu ile tüm elemanları silebiliriz.
  list1.clear();
  print(list1);

  // List constructorları

  // List.filled(length,filled) constructoru ile belirli bir boyutta liste oluşturabiliriz.
  List<int> list5 = List<int>.filled(5, 0);
  print(list5);

  // List.generate(length,generator) constructor
  List<int> list6 = List<int>.generate(5, (index) => index * 2);
  print(list6);

  // List.from(Iterable) constructor
  List<int> list7 = List<int>.from([1, 2, 3, 4, 5]);
  print(list7);

  // List.of(Iterable) constructor
  List<int> list8 = List<int>.of([1, 2, 3, 4, 5]);
  print(list8);

  // List.unmodifiable(Iterable) constructor
  List<int> list9 = List<int>.unmodifiable([1, 2, 3, 4, 5]);
  // list9.add(6); // hata verir
  print(list9);
}

// Setler
void sets() {
  // Set yapısı benzersiz (uniq) veri saklamamızı sağlar.
  // Set yapısı generic yapıdadır. Yani sadece belirli bir tip veri saklamamızı sağlar.
  // Set yapısı içerisinde farklı tipte veri saklamak için dynamic tipini kullanabiliriz.
  // Ancak bu durumda tip güvenliğini kaybetmiş oluruz.

  // Set tanımlama
  var set1 = {1, 2, 3, 4, 5};
  print(set1);

  // Set<int> tipinde bir set tanımlıyoruz.
  Set<int> set2 = {1, 2, 3, 4, 5};
  print(set2);

  // Set<String> tipinde bir set tanımlıyoruz.
  Set<String> set3 = {'Ali', 'Veli', 'Deli'};
  print(set3);

  // Set<dynamic> tipinde bir set tanımlıyoruz.
  Set<dynamic> set4 = {1, 'Ali', 3.14, false};
  print(set4);

  // Set methods
  // add() methodu ile bir eleman ekleyebiliriz.
  set1.add(6);
  print(set1);

  // remove() methodu ile belirli bir elemanı silebiliriz.
  set1.remove(6);
  print(set1);

  // contains() methodu ile belirli bir elemanın set içerisinde olup olmadığını kontrol edebiliriz.
  print(set1.contains(5));

  // addAll() methodu ile birden fazla eleman ekleyebilir
  set1.addAll({6, 7, 8, 9, 10});
  print(set1);

  // remove() methodu ile belirli bir elemanı silebiliriz.
  set1.remove(10);
  print(set1);

  // clear() methodu ile tüm elemanları silebiliriz.
  set1.clear();
  print(set1);

  // Set constructorları

  // Set.from(Iterable) constructor
  Set<int> set5 = Set<int>.from([1, 2, 3, 4, 5]);
  print(set5);

  // Set.of(Iterable) constructor
  Set<int> set6 = Set<int>.of([1, 2, 3, 4, 5]);
  print(set6);

  // Set.unmodifiable(Iterable) constructor
  Set<int> set7 = Set<int>.unmodifiable({1, 2, 3, 4, 5});
  // set7.add(6); // hata verir
  print(set7);
}

// Mapler
void maps() {
  // Map yapısı key-value şeklinde veri saklamamızı sağlar.
  // Map yapısı generic yapıdadır. Yani sadece belirli bir tip veri saklamamızı sağlar.
  // Map yapısı içerisinde farklı tipte veri saklamak için dynamic tipini kullanabiliriz.
  // Ancak bu durumda tip güvenliğini kaybetmiş oluruz.

  // Map tanımlama
  var map1 = {'name': 'Ali', 'age': 25, 'city': 'Ankara'};
  print(map1);

  // Map<int,String> tipinde bir map tanımlıyoruz.
  Map<int, String> map2 = {1: 'Ali', 2: "25", 3: 'Ankara'};
  print(map2);

  // Map<String,String> tipinde bir map tanımlıyoruz.
  Map<String, String> map3 = {'name': 'Ali', 'city': 'Ankara'};
  print(map3);

  // Map<String,dynamic> tipinde bir map tanımlıyoruz.
  Map<String, dynamic> map4 = {'name': 'Ali', 'age': 25, 'city': 'Ankara'};
  print(map4);

  // Map operatorleri

  // [] operatorü ile map elemanlarına erişebiliriz.
  print(map1['name']);

  // []= operatorü ile map elemanlarını değiştirebiliriz.
  map1['name'] = 'Veli';
  print(map1);

  // Map methods
  // remove() methodu ile belirli bir key'e sahip elemanı silebiliriz.
  map1.remove('name');
  print(map1);

  // addAll() methodu ile birden fazla eleman ekleyebilir
  map1.addAll({'name': 'Ali', 'age': 25, 'city': 'Ankara'});

  // containsKey() methodu ile belirli bir key'in map içerisinde olup olmadığını kontrol edebiliriz.
  print(map1.containsKey('name'));

  // containsValue() methodu ile belirli bir value'nun map içerisinde olup olmadığını kontrol edebiliriz.
  print(map1.containsValue('Ali'));

  // update() methodu ile belirli bir key'e sahip elemanı güncelleyebiliriz.
  map1.update('name', (value) => 'Veli');
  print(map1);

  // updateAll() methodu ile tüm elemanları güncelleyebiliriz.
  map1.updateAll((key, value) => value.toString().toUpperCase());
  print(map1);

  // forEach() methodu ile map içerisindeki elemanları döngü ile gezebiliriz.
  map1.forEach((key, value) {
    print('$key: $value');
  });

  // keys() methodu ile map içerisindeki key'leri alabiliriz.
  print(map1.keys);

  // values() methodu ile map içerisindeki value'ları alabiliriz.
  print(map1.values);

  // length property ile map içerisindeki eleman sayısını alabiliriz.
  print(map1.length);

  // isEmpty property ile map'in boş olup olmadığını kontrol edebiliriz.
  print(map1.isEmpty);

  // isNotEmpty property ile map'in boş olup olmadığını kontrol edebiliriz.
  print(map1.isNotEmpty);

  // clear() methodu ile tüm elemanları silebiliriz.
  map1.clear();

  // Map constructorları

  // Map.from(Iterable) constructor
  Map<String, dynamic> map5 =
      Map<String, dynamic>.from({'name': 'Ali', 'age': 25, 'city': 'Ankara'});
  print(map5);

  // Map.of(Iterable) constructor
  Map<String, dynamic> map6 =
      Map<String, dynamic>.of({'name': 'Ali', 'age': 25, 'city': 'Ankara'});
  print(map6);

  // Map.unmodifiable(Iterable) constructor
  Map<String, dynamic> map7 = Map<String, dynamic>.unmodifiable(
      {'name': 'Ali', 'age': 25, 'city': 'Ankara'});
  // map7['country'] = 'Turkey'; // hata verir
  print(map7);
}
