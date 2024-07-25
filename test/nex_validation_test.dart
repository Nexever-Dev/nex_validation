import 'package:flutter_test/flutter_test.dart';

import 'package:nex_validation/nex_validation.dart';

void main() {
  test('name validations', () {
    expect(
        'Name'.nameValidations(
          emptyMsg: 'empty',
          lengthMsg: 'length',
          validMsg: 'valid',
          min: 5,
        ),
        'length');
    expect(
        ''.nameValidations(
          emptyMsg: 'empty',
          lengthMsg: 'length',
          validMsg: 'valid',
          min: 5,
        ),
        'empty');
    expect(
        'Nameeeeeeeeeeeeeeeeeeeeeeeeeeee'.nameValidations(
          emptyMsg: 'empty',
          lengthMsg: 'length',
          validMsg: 'valid',
          min: 5,
        ),
        '');
    expect(
        'Mehak Gupta'.nameValidations(
          emptyMsg: 'empty',
          lengthMsg: 'length',
          validMsg: 'valid',
          min: 5,
        ),
        '');
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
  test('email validations', () {
    expect(
        ''.emailValidations(
          emptyMsg: 'empty',
          validMsg: 'valid',
        ),
        'empty');
    expect(
        'jake@'.emailValidations(
          emptyMsg: 'empty',
          validMsg: 'valid',
        ),
        'valid');
    expect(
        'jake@yopmail'.emailValidations(
          emptyMsg: 'empty',
          validMsg: 'valid',
        ),
        'valid');
    expect(
        'jake@yopmail.com'.emailValidations(
          emptyMsg: 'empty',
          validMsg: 'valid',
        ),
        '');
  });
  test('password validations', () {
    expect(
        ''.passwordValidations(
          emptyMsg: 'empty',
          maxLengthMsg: 'min',
          minLengthMsg: 'max',
        ),
        'empty');
    expect(
        ''.passwordValidations(
          emptyMsg: 'empty',
          maxLengthMsg: 'min',
          minLengthMsg: 'max',
        ),
        'empty');
    expect(
        '123'.passwordValidations(
          emptyMsg: 'empty',
          maxLengthMsg: 'min',
          minLengthMsg: 'max',
          min: 6,
        ),
        'min');
    expect(
        ''.passwordValidations(
          emptyMsg: 'empty',
          maxLengthMsg: 'min',
          minLengthMsg: 'max',
        ),
        'empty');
    expect(
        ''.passwordValidations(
          emptyMsg: 'empty',
          maxLengthMsg: 'min',
          minLengthMsg: 'max',
        ),
        'empty');
  });
}
