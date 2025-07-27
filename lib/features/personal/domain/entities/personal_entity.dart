class PersonalEntity {
  final String firstName;
  final String lastName;
  final String headLine;
  final String imagePath;
  final String location;
  final String phone;
  final String email;
  final String about;
  final Map<String, dynamic> socialLinks;

  PersonalEntity({
    required this.firstName,
    required this.lastName,
    required this.headLine,
    required this.imagePath,
    required this.location,
    required this.phone,
    required this.email,
    required this.about,
    required this.socialLinks,
  });
}
