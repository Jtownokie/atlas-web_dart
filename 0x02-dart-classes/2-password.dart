class Password {
  String? password;

  Password({this.password});

  bool isValid() {
    if (this.password!.length >= 8 && this.password!.length <= 16) {
      String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).+$';
      RegExp regExp = new RegExp(pattern);
      return regExp.hasMatch(this.password!);
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
