import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/projects/data/models/projects_model.dart';
import 'package:portfoilosr/features/projects/domain/entity/projects_entity.dart';

void main() {
  group('test projects model', () {
    test("test model as ProjectsEntity", () {
      // assert
      ProjectsModel model = ProjectsModel(
        title: '',
        description: '',
        image: '',
        links: [],
        technologies: [],
      );

      // act
      expect(model, isA<ProjectsEntity>());
    });

    test("test model from json", () {
      // arrange
      final json = fixture('projects_data');
      final projects = jsonDecode(json)['projects'];
      // assert
      ProjectsModel model = ProjectsModel.fromJson(projects[0]);
      // act
      expect(model, isA<ProjectsModel>());
      expect(model, isA<ProjectsEntity>());
    });
  });
}
