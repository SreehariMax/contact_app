class ValidationHelper {
  static String? checkIsNullOrEmpty(String? inputText) {
    if (inputText == null || inputText.trim().isEmpty) {
      return 'Field cannot be empty';
    }
    return null;
  }

  static String? validateEmail( String? inputText) {
    String? nullableEmail = checkIsNullOrEmpty(inputText);
    if (nullableEmail != null) {
      return nullableEmail;
    }
    final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(inputText!);
      if (!emailValid){
        return 'Invalid Email';
      }
    return null;
  }

  static String? validatePassword(String? inputText) {
    String? nullablePassword = checkIsNullOrEmpty(inputText);
    if (nullablePassword != null) {
      return nullablePassword;
    }
    final bool passwordValid = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(inputText!);
      if (!passwordValid){
        return 'Invalid Password';
      }
    return null;
  }

    static String? validateNumber(String? inputText) {
    String? nullableNumber = checkIsNullOrEmpty(inputText);
    if (nullableNumber != null) {
      return nullableNumber;
    }
    final bool isValidPhoneNumber =
    RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(inputText ?? '');
      if (!isValidPhoneNumber){
        return 'Invalid number';
      }
    return null;
  }

   static String? validateName(String? value) {
    String? nullableName = checkIsNullOrEmpty(value);
    if (value!.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }
     

}
