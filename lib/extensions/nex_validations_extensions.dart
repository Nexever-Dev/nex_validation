

import '../fuctions/nex_validations_functions.dart';

extension NexValidationsExtensions on String {
  /// Performs a series of validations on a name string based on provided parameters.
  ///
  /// Returns an error message indicating any validation failures, or an empty string if the name passes all validations.
  ///
  /// Parameters:
  /// - [min]: The minimum length allowed for the name (optional).
  /// - [max]: The maximum length allowed for the name (optional).
  /// - [emptyMsg]: The error message to return if the name is empty.
  /// - [lengthMsg]: The error message to return if the name length is invalid.
  /// - [validMsg]: The error message to return if the name contains invalid characters.
  ///
  /// Example:
  /// ```dart
  /// String error = nameValidations(
  ///   min: 3,
  ///   max: 20,
  ///   emptyMsg: 'Name cannot be empty',
  ///   lengthMsg: 'Name must be between 3 and 20 characters',
  ///   validMsg: 'Name contains invalid characters'
  /// );
  /// ```
  ///
  /// Note: This function internally uses other validation functions such as `isEmpty`, `isMinLengthValid`, and `isNameValid`.
  ///
  /// Example:
  /// ```dart
  /// String error = nameValidations(
  ///   min: 3,
  ///   emptyMsg: 'Name cannot be empty',
  ///   lengthMsg: 'Name must be at least 3 characters long',
  ///   validMsg: 'Name contains invalid characters'
  /// );
  /// ```
  String nameValidations({
    int? min,
    required String emptyMsg,
    required String lengthMsg,
    required String validMsg,
  }) {
    String error = "";
    NexValidationsFunctions functions = NexValidationsFunctions();
    if (functions.isEmpty(this)) {
      error = emptyMsg;
    } else if (functions.isMinLengthValid(this, min: min)) {
      error = lengthMsg;
    } else if (functions.isNameValid(this)) {
      error = validMsg;
    }
    return error;
  }

  /// Performs validations on an email address string based on provided parameters.
  ///
  /// Returns an error message indicating any validation failures, or an empty string if the email address passes all validations.
  ///
  /// Parameters:
  /// - [emptyMsg]: The error message to return if the email address is empty.
  /// - [validMsg]: The error message to return if the email address is invalid.
  ///
  /// Example:
  /// ```dart
  /// String error = emailValidations(
  ///   emptyMsg: 'Email address cannot be empty',
  ///   validMsg: 'Invalid email address format'
  /// );
  /// ```
  ///
  /// Note: This function internally uses other validation functions such as `isEmpty` and `isEmailValid`.
  ///
  /// Example:
  /// ```dart
  /// String error = emailValidations(
  ///   emptyMsg: 'Email address cannot be empty',
  ///   validMsg: 'Invalid email address format'
  /// );
  /// ```
  String emailValidations({
    required String emptyMsg,
    required String validMsg,
  }) {
    String error = "";
    NexValidationsFunctions functions = NexValidationsFunctions();
    if (functions.isEmpty(this)) {
      error = emptyMsg;
    } else if (functions.isEmailValid(this)) {
      error = validMsg;
    }
    return error;
  }

  /// Performs validations on a phone number string based on provided parameters.
  ///
  /// Returns an error message indicating any validation failures, or an empty string if the phone number passes all validations.
  ///
  /// Parameters:
  /// - [emptyMsg]: The error message to return if the phone number is empty.
  /// - [minLengthMsg]: The error message to return if the phone number is shorter than the minimum allowed length.
  /// - [maxLengthMsg]: The error message to return if the phone number is longer than the maximum allowed length.
  ///
  /// Example:
  /// ```dart
  /// String error = phoneNumberValidations(
  ///   emptyMsg: 'Phone number cannot be empty',
  ///   minLengthMsg: 'Phone number must be at least 5 digits long',
  ///   maxLengthMsg: 'Phone number cannot exceed maximum length'
  /// );
  /// ```
  ///
  /// Note: This function internally uses other validation functions such as `isEmpty`, `isMinLengthValid`, and `isMaxLengthValid`.
  ///
  /// Example:
  /// ```dart
  /// String error = phoneNumberValidations(
  ///   emptyMsg: 'Phone number cannot be empty',
  ///   minLengthMsg: 'Phone number must be at least 5 digits long',
  ///   maxLengthMsg: 'Phone number cannot exceed maximum length'
  /// );
  /// ```
  String phoneNumberValidations({
    int? min,
    int? max,
    required String emptyMsg,
    required String minLengthMsg,
    required String maxLengthMsg,
  }) {
    String error = "";
    NexValidationsFunctions functions = NexValidationsFunctions();
    if (functions.isEmpty(this)) {
      error = emptyMsg;
    } else if (functions.isMinLengthValid(this, min: min)) {
      error = minLengthMsg;
    } else if (functions.isMaxLengthValid(this)) {
      error = minLengthMsg;
    }
    return error;
  }

  /// Performs validations on a password string based on provided parameters.
  ///
  /// Returns an error message indicating any validation failures, or an empty string if the password passes all validations.
  ///
  /// Parameters:
  /// - [emptyMsg]: The error message to return if the password is empty.
  /// - [minLengthMsg]: The error message to return if the password is shorter than the minimum allowed length.
  /// - [maxLengthMsg]: The error message to return if the password is longer than the maximum allowed length.
  ///
  /// Example:
  /// ```dart
  /// String error = passwordValidations(
  ///   emptyMsg: 'Password cannot be empty',
  ///   minLengthMsg: 'Password must be at least 6 characters long',
  ///   maxLengthMsg: 'Password cannot exceed 12 characters'
  /// );
  /// ```
  ///
  /// Note: This function internally uses other validation functions such as `isEmpty`, `isMinLengthValid`, and `isMaxLengthValid`.
  ///
  /// Example:
  /// ```dart
  /// String error = passwordValidations(
  ///   emptyMsg: 'Password cannot be empty',
  ///   minLengthMsg: 'Password must be at least 6 characters long',
  ///   maxLengthMsg: 'Password cannot exceed 12 characters'
  /// );
  /// ```
  String passwordValidations({
    int? min,
    int? max,
    required String emptyMsg,
    required String minLengthMsg,
    required String maxLengthMsg,
  }) {
    String error = "";
    NexValidationsFunctions functions = NexValidationsFunctions();
    if (functions.isEmpty(this)) {
      error = emptyMsg;
    } else if (functions.isMinLengthValid(this, min: min)) {
      error = minLengthMsg;
    } else if (functions.isMaxLengthValid(this, max: max)) {
      error = minLengthMsg;
    }
    return error;
  }
}
