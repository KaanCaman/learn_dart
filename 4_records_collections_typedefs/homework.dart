///
/// Soru 1 : Sabit liste oluşturun ve bu listeyi ekrana yazdırın.
/// Question 1 : Create a constant list and print this list to the screen.
///
/// Soru 2 : Düzenlenemeyen Bir set oluşturun ve bu seti ekrana yazdırın.
/// Question 2 : Create an unmodifiable set and print this set to the screen.
///
/// Soru 3 :  StrList, IntList ve JsonType isimli typedef'ler oluşturun ve bu typedef'leri kullanarak
///           bir liste, bir map ve bir liste oluşturun.
///           Oluşturduğunuz bu veri tiplerini ekrana yazdırın.
///
/// Question 3 : Create typedefs named StrList, IntList, and JsonType, and using these typedefs
///              create a list, a map, and a list.
///              Print these data types to the screen.
///
///

typedef StrList = List<String>;
typedef IntList = List<int>;
typedef JsonType = Map<String, dynamic>;

void main(List<String> args) {
  // CEVAP - ANSWER 1 :
  const List<int> constantList = [1, 2, 3, 4, 5];
  print(constantList);

  // CEVAP - ANSWER 2 :
  final Set<int> unmodifiableSet = Set<int>.unmodifiable({1, 2, 3, 4, 5});
  print(unmodifiableSet);

  // CEVAP - ANSWER 3 :
  StrList strList = ['Ali', 'Veli', 'Deli'];
  print(strList);

  IntList intList = [1, 2, 3, 4, 5];
  print(intList);

  JsonType jsonType = {
    'name': 'Ali',
    'surname': 'Veli',
    'age': 25,
    'isStudent': true
  };
  print(jsonType);
}
