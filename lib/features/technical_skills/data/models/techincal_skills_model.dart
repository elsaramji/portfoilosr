import 'package:portfoilosr/features/technical_skills/domin/entities/tech_skills_entity.dart';

class TechSkillsModel extends TechSkillsEntity {
  TechSkillsModel({
    required super.title,
    required super.imagePath,
    required super.technologies,
  });

  factory TechSkillsModel.fromJson(Map<String, dynamic> json) {
    return TechSkillsModel(
      title: json['title'],
      imagePath: json['imagePath'],
      technologies: json['technologies'],
    );
  }
}
