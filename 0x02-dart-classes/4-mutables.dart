class Password {
  String? _password;

  Password({String? password}) {
    _password = password;
  }

  bool isValid() {
    if (_password!.length >= 8 && _password!.length <= 16) {
      String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).+$';
      RegExp regExp = new RegExp(pattern);
      return regExp.hasMatch(_password!);
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'Your Password is: ${_password}';
  }

  String get password {
    return _password!;
  }

  void set password(String? password) {
    _password = password;
  }
}
