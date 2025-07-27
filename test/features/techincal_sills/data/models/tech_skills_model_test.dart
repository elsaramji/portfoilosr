import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/technical_skills/data/models/techincal_skills_model.dart';
import 'package:portfoilosr/features/technical_skills/domin/entities/tech_skills_entity.dart';

void main() {
  group('test techincal skills model', () {
    test("test model as TechincalSkillsEntity", () {
      // assert
      TechSkillsModel model = TechSkillsModel(
        title: '',
        imagePath: '',
        technologies: [],
      );
      // act
      expect(model, isA<TechSkillsEntity>());
    });

    test("test model from json", () {
      // arrange
      final json = fixture('technical_skills');
      final techincalSkills = jsonDecode(json)['technical_skills'];
      // assert
      TechSkillsModel model = TechSkillsModel.fromJson(techincalSkills[0]);
      // act
      expect(model, isA<TechSkillsModel>());
      expect(model, isA<TechSkillsEntity>());
    });
  });
}
