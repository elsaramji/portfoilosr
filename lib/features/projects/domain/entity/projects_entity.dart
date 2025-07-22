class ProjectsEntity {
  final String title;
  final String description;
  final String image;
  final List<String> links;
  final List<String> technologies;

  ProjectsEntity({
    required this.title,
    required this.description,
    required this.image,
    required this.links,
    required this.technologies,
  });
}
