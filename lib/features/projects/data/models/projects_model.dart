import 'package:portfoilosr/features/projects/domain/entity/projects_entity.dart';

class ProjectsModel extends ProjectsEntity {
  ProjectsModel({
    required super.title,
    required super.description,
    required super.image,
    required super.links,
    required super.technologies,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) => ProjectsModel(
    title: json['title'],
    description: json['description'],
    image: json['image'],
    links: json['links'],
    technologies: json['technologies'],
  );
}
