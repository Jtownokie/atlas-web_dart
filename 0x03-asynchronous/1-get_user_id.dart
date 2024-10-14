import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  var userData = await fetchUserData();
  var user = jsonDecode(userData);
  return user['id'];
}
