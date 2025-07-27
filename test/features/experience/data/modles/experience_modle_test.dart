import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/experience/data/models/experinece_model.dart';
import 'package:portfoilosr/features/experience/domain/entities/experinece_entity.dart';

void main() {
  group("test ExperienceModel ", () {
    test("test model as ExperienceEntity", () {

      // assert
      ExperineceModel model = ExperineceModel(
        company: {"name": "name", "location": "location", "link": "link"},
        position: "position",
        startDate: "startDate",
        endDate: "endDate",
        description: "description",
        title: 'test title',
        technologies: [],
      );
      // act
      expect(model, isA<ExperineceEntity>());
    });

    test("test model from json", () {
      // arrange
      final json = fixture('experineces_data');
      final experienes = jsonDecode(json)["experiences"];
      //assert
      ExperineceModel model = ExperineceModel.fromJson(experienes[0]);
      // act
      expect(model, isA<ExperineceModel>());
      expect(model, isA<ExperineceEntity>());
    });
  });
}
