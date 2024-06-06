///
/// #Typedefs:
/// TypeDefs karmaşık veri tiplerini daha anlaşılır
/// hale getirmek için kullanılır.
///
///

typedef StrList = List<String>;
typedef IntList = List<int>;
typedef JsonType = Map<String, dynamic>;

void main(List<String> args) {
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
