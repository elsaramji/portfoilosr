import 'package:portfoilosr/features/experience/domain/entities/experinece_entity.dart';

class ExperineceModel extends ExperineceEntity {
  ExperineceModel({
    required super.title,
    required super.company,
    required super.technologies,
    required super.position,
    required super.startDate,
    required super.endDate,
    required super.description,
  });

  factory ExperineceModel.fromJson(Map<String, dynamic> json) =>
      ExperineceModel(
        title: json["title"],
        company: json["company"],
        technologies: json["technologies"],
        position: json["position"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        description: json["description"],
      );
}
