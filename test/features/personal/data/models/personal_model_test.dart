import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/personal/data/modles/personal_model.dart';
import 'package:portfoilosr/features/personal/domain/entities/personal_entity.dart';

void main() {
  group("test result of data as PersonalModel and PersonalEntity", () {
    test("test model result as PersonalEntity ", () {
      // act
      PersonalModel result = PersonalModel(
        firstName: '',
        lastName: '',
        headLine: '',
        imagePath: '',
        location: '',
        phone: '',
        email: '',
        about: '',
        socialLinks: {},
      );
      // assert
      expect(result, isA<PersonalEntity>());
    });

    test("test result from json as PersonalModel and PersonalEntity", () {
      // arrange
      final json = fixture('personal_data');
      final personal = jsonDecode(json);
      // act
      PersonalModel result = PersonalModel.fromJson(personal);
      // assert
      expect(result, isA<PersonalModel>());
      expect(result, isA<PersonalEntity>());
    });
  });
}
