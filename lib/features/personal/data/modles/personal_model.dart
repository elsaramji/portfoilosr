import 'package:portfoilosr/features/personal/domain/entities/personal_entity.dart';

class PersonalModel extends PersonalEntity {
  PersonalModel({
    required super.firstName,
    required super.lastName,
    required super.headLine,
    required super.imagePath,
    required super.location,
    required super.phone,
    required super.email,
    required super.about,
    required super.socialLinks,
  });

  factory PersonalModel.fromJson(Map<String, dynamic> json) => PersonalModel(
    firstName: json["firstName"],
    lastName: json["lastName"],
    headLine: json["headLine"],
    imagePath: json["imagePath"],
    location: json["location"],
    phone: json["phone"],
    email: json["email"],
    about: json["about"],
    socialLinks: json["socialLinks"],
  );
}
