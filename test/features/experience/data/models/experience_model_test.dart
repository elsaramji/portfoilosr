import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/experience/data/models/experinece_model.dart';
import 'package:portfoilosr/features/experience/domain/entities/experinece_entity.dart';

void main() {
  group("test result of data as ExperineceModel and ExperineceEntity ", () {
    test("test model result as ExperienceEntity", () {

     //act
      ExperineceModel result = ExperineceModel(
        company: {"name": "name", "location": "location", "link": "link"},
        position: "position",
        startDate: "startDate",
        endDate: "endDate",
        description: "description",
        title: 'test title',
        technologies: [],
      );
      //assert      
      expect(result, isA<ExperineceEntity>());
    });

    test("test result from json as ExperineceModel and ExperineceEntity", () {
      // arrange
      final json = fixture('experineces_data');
      final experienes = jsonDecode(json)["experiences"];
      //act
      ExperineceModel result = ExperineceModel.fromJson(experienes[0]);
      // assert
      expect(result, isA<ExperineceModel>());
      expect(result, isA<ExperineceEntity>());
    });
  });
}
