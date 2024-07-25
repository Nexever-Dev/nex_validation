class NexValidationsFunctions {
  /// Checks if the provided [data] is empty.
  ///
  /// Returns `true` if [data] is an empty string, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// bool empty = isEmpty(''); // Returns true
  /// bool notEmpty = isEmpty('Hello'); // Returns false
  /// ```
  ///
  /// Note: This function considers a string with length 0 as empty.
  ///
  /// Example:
  /// ```dart
  /// bool empty = isEmpty(' '); // Returns false
  /// ```
  bool isEmpty(String data) {
    if (data.isEmpty) {
      return true;
    }
    return false;
  }

  /// Checks if the length of the provided [data] meets the minimum length requirement.
  ///
  /// Returns `true` if the length of [data] is less than the specified minimum length [min].
  /// If [min] is not provided, the default minimum length is set to 3.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isMinLengthValid('example', min: 5);
  /// // Returns true since 'example' has a length less than 5.
  /// ```
  ///
  /// If the length of [data] is equal to or greater than [min], returns `false`.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isMinLengthValid('example', min: 7);
  /// // Returns false since 'example' has a length of 7, meeting the minimum requirement.
  /// ```
  ///
  bool isMinLengthValid(String data, {int? min}) {
    if (data.length < (min ?? 3)) {
      return true;
    }
    return false;
  }

  /// Checks if the length of the provided [data] exceeds the maximum length allowed.
  ///
  /// Returns `true` if the length of [data] is greater than the specified maximum length [max].
  /// If [max] is not provided, the default maximum length is set to 15.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isMaxLengthValid('example', max: 5);
  /// // Returns true since 'example' has a length greater than 5.
  /// ```
  ///
  /// If the length of [data] is equal to or less than [max], returns `false`.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isMaxLengthValid('example', max: 10);
  /// // Returns false since 'example' has a length of 7, within the maximum limit.
  /// ```
  bool isMaxLengthValid(String data, {int? max}) {
    if (data.length > (max ?? 15)) {
      return true;
    }
    return false;
  }

  /// Checks if the provided [data] contains any special characters or digits.
  ///
  /// Returns `true` if [data] contains any special characters or digits, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isNameValid('JohnDoe'); // Returns false
  /// bool notValid = isNameValid('JohnDoe123'); // Returns true
  /// ```
  ///
  /// Note: This function checks if [data] contains any characters other than letters and spaces.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isNameValid('John Doe'); // Returns true
  /// ```
  bool isNameValid(String data) {
    var expCheck = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    if (expCheck.hasMatch(data)) {
      return true;
    }
    return false;
  }

  /// Checks if the provided [data] is a valid email address.
  ///
  /// Returns `true` if [data] is not a valid email address, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isEmailValid('example@email.com'); // Returns false
  /// bool notValid = isEmailValid('example@'); // Returns true
  /// ```
  ///
  /// Note: This function validates the format of the email address but does not verify its existence or validity.
  ///
  /// Example:
  /// ```dart
  /// bool isValid = isEmailValid('example@'); // Returns true (invalid format)
  /// ```
  bool isEmailValid(String data) {
    var expCheck = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!expCheck.hasMatch(data)) {
      return true;
    }
    return false;
  }
}
