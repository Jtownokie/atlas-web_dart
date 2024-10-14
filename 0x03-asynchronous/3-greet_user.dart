import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    var userData = await fetchUserData();
    var user = jsonDecode(userData);
    return 'Hello ${user['username']}';
  } catch (err) {
    return 'error caught: ${err}';
  }
}

Future<String> loginUser() async {
  try {
    var checkUser = await checkCredentials();

    if (checkUser == true) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: ${err}';
  }
}
