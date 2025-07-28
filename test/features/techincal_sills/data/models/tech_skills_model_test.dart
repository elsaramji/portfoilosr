import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/technical_skills/data/models/techincal_skills_model.dart';
import 'package:portfoilosr/features/technical_skills/domin/entities/tech_skills_entity.dart';

void main() {
  group('test result of data as TechSkillsModel and TechSkillsEntity', () {
    test("test result as TechSkillsEntity", () {
      // act
      TechSkillsModel result = TechSkillsModel(
        title: '',
        imagePath: '',
        technologies: [],
      );
      // assert
      expect(result, isA<TechSkillsEntity>());
    });

    test("test result from json as TechSkillsModel and TechSkillsEntity", () {
      // arrange
      final json = fixture('technical_skills');
      final techincalSkills = jsonDecode(json)['technical_skills'];
      // act
      TechSkillsModel result = TechSkillsModel.fromJson(techincalSkills[0]);
      // assert
      expect(result, isA<TechSkillsModel>());
      expect(result, isA<TechSkillsEntity>());
    });
  });
}
