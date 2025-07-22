import 'package:portfoilosr/features/experience/domain/entities/experinece_entity.dart';
import 'package:portfoilosr/features/personal/domain/entities/personal_entity.dart';
import 'package:portfoilosr/features/projects/domain/entity/projects_entity.dart';
import 'package:portfoilosr/features/technical_skills/domin/entities/tech_skills_entity.dart';

class PortfoiloEntity {
  final PersonalEntity personal;
  final List<ProjectsEntity> projects;
  final List<TechSkillsEntity> techSkills;
  final List<ExperineceEntity> experience;

  PortfoiloEntity({
    required this.personal,
    required this.projects,
    required this.techSkills,
    required this.experience,
  });
}
