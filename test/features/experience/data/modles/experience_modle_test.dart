import 'package:flutter_test/flutter_test.dart';
import 'package:portfoilosr/features/experience/data/models/experinece_model.dart';
import 'package:portfoilosr/features/experience/domain/entities/experinece_entity.dart';

void main() {
  group("test ExperienceModel ", () {
    test("test model as ExperienceEntity", () {
      ExperineceModel model = ExperineceModel(
        company: {"name": "name", "location": "location", "link": "link"},
        position: "position",
        startDate: "startDate",
        endDate: "endDate",
        description: "description",
        title: 'test title',
        technologies: [],
      );

      expect(model, isA<ExperineceEntity>());
    });
  });
}
