import 'package:get/get.dart';
import '../models/project.dart';
import '../services/project_service.dart';

class ProjectController extends GetxController {
  final ProjectService service;

  ProjectController({required this.service});

  var projects = <Project>[].obs;
  var filtered = <Project>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProjects();
  }

  Future<void> loadProjects() async {
    projects.value = await service.fetchProjects();
    filtered.value = projects;
  }

  void filterByCategory(String category) {
    if (category == 'All') {
      filtered.value = projects;
    } else {
      filtered.value = projects.where((p) => p.category == category).toList();
    }
  }
}
