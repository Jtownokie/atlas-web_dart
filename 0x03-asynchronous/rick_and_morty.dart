import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> printRmCharacters() async {
  try {
    var url = Uri.https('www.rickandmortyapi.com', '/api/character');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    }
  } catch (err) {
    return 'error caught: <error>';
  }
}
