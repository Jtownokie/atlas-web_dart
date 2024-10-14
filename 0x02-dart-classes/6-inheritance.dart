import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;

  User({required this.id, required this.name, required this.age, required this.height, String? user_password}) {
    password = user_password;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${this.isValid()})';
  }

  String get user_password {
    return password;
  }

  void set user_password(String? user_password) {
    password = user_password;
  }
}
