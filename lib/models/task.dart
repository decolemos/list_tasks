class Task {
  int number;
  String name;
  String? description;
  String? applicant;

  Task ({
    required this.number,
    required this.name,
    this.description,
    this.applicant
  });
}