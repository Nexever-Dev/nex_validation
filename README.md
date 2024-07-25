
A set of extension methods for performing common validations on strings in Dart applications.

## Features

### Name Validations

- **Name Length**: Validates the length of a name string based on provided parameters (`min`, `max`).
- **Empty Check**: Ensures the name is not empty.
- **Character Validation**: Checks if the name contains only valid characters.

### Email Validations

- **Empty Check**: Ensures the email address is not empty.
- **Format Validation**: Verifies if the email address follows a valid format.

### Phone Number Validations

- **Empty Check**: Ensures the phone number is not empty.
- **Length Validation**: Validates the length of the phone number within specified limits (`min`, `max`).

### Password Validations

- **Empty Check**: Ensures the password is not empty.
- **Length Validation**: Validates the length of the password within specified limits (`min`, `max`).

## Installation

Add `nex_validations_extensions` to your `pubspec.yaml`:

```yaml
dependencies:
  nex_validations_extensions: <latest-version>
```

## Usage

```dart
import 'package:nex_validations_extensions/nex_validations_extensions.dart';

void main() {
  String name = "John Doe";
  String email = "john.doe@example.com";
  String phoneNumber = "1234567890";
  String password = "password123";

  // Example of using name validations
  String nameError = name.nameValidations(
    min: 3,
    max: 20,
    emptyMsg: 'Name cannot be empty',
    lengthMsg: 'Name must be between 3 and 20 characters',
    validMsg: 'Name contains invalid characters',
  );

  // Example of using email validations
  String emailError = email.emailValidations(
    emptyMsg: 'Email address cannot be empty',
    validMsg: 'Invalid email address format',
  );

  // Example of using phone number validations
  String phoneError = phoneNumber.phoneNumberValidations(
    emptyMsg: 'Phone number cannot be empty',
    minLengthMsg: 'Phone number must be at least 5 digits long',
    maxLengthMsg: 'Phone number cannot exceed maximum length',
  );

  // Example of using password validations
  String passwordError = password.passwordValidations(
    min: 6,
    max: 12,
    emptyMsg: 'Password cannot be empty',
    minLengthMsg: 'Password must be at least 6 characters long',
    maxLengthMsg: 'Password cannot exceed 12 characters',
  );

  print('Name Validation Error: $nameError');
  print('Email Validation Error: $emailError');
  print('Phone Number Validation Error: $phoneError');
  print('Password Validation Error: $passwordError');
}
```
# nex_validation
