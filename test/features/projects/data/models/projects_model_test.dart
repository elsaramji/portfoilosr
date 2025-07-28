import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/core/helper/fixture.dart';
import 'package:portfoilosr/features/projects/data/models/projects_model.dart';
import 'package:portfoilosr/features/projects/domain/entity/projects_entity.dart';

void main() {
  group('test result of data as ProjectsModel and ProjectsEntity', () {
    test("test result as ProjectsEntity", () {
      // act
      ProjectsModel result = ProjectsModel(
        title: '',
        description: '',
        image: '',
        links: [],
        technologies: [],
      );

      // assert
      expect(result, isA<ProjectsEntity>());
    });

    test("test result from json as ProjectsModel and ProjectsEntity", () {
      // arrange
      final json = fixture('projects_data');
      final projects = jsonDecode(json)['projects'];
      // act
      ProjectsModel result = ProjectsModel.fromJson(projects[0]);
      // assert
      expect(result, isA<ProjectsModel>());
      expect(result, isA<ProjectsEntity>());
    });
  });
}
