class ProjectsEntity {
  final String title;
  final String description;
  final String image;
  final List<dynamic> links;
  final List<dynamic> technologies;

  ProjectsEntity({
    required this.title,
    required this.description,
    required this.image,
    required this.links,
    required this.technologies,
  });
}
