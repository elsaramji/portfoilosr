import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/personal/data/modles/personal_model.dart';
import 'package:portfoilosr/features/personal/domain/entities/personal_entity.dart';

void main() {
  group("test PersonalModel", () {
    test("test model as PersonalEntity ", () {
      // assert
      PersonalModel model = PersonalModel(
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
      // act
      expect(model, isA<PersonalEntity>());
    });

    test("test model from json", () {
      // arrange
      final json = fixture('personal_data');
      final personal = jsonDecode(json);
      // assert
      PersonalModel model = PersonalModel.fromJson(personal);
      // act
      expect(model, isA<PersonalModel>());
      expect(model, isA<PersonalEntity>());
    });
  });
}
