import 'package:test/test.dart';

import 'package:clean_architecture/validation/validators/validators.dart';
import 'package:clean_architecture/main/factories/factories.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
      MinLengthValidation(field: 'password', size: 3)
    ]);
  });
}