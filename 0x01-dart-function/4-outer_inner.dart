void outer(String name, String id) {
  List<String> parsedName = name.split(' ');
  String abbreviatedName = '${parsedName[1].substring(0, 0)}.${parsedName[0]}';

  String inner() {
    return 'Hello Agent ${abbreviatedName} your id is ${id}';
  }

  print(inner());
}
