class Validation {
  static String? validatepass(String pass) {
    if (pass == null) {
      return "Password invalid";
    }
    if (pass.length < 6) {
      return "Password require minium 6 characters";
    }
    return null;
  }

  static String? validateemail(String email) {
    if (email == null) {
      return "Email invalid";
    }
    var isValid =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if (!isValid) {
      return "Email invalid";
    }
    return null;
  }
}
