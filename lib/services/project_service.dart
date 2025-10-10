import 'package:hosting_with_git/models/project.dart';

class ProjectService {
  Future<List<Project>> fetchProjects() async {
    // Simulating data from API or Firebase
    return [
      Project(title: 'Portfolio Website', category: 'Web'),
      Project(title: 'Mobile App UI', category: 'Mobile'),
      Project(title: 'Admin Dashboard', category: 'Web'),
    ];
  }
}
