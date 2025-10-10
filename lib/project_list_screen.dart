import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hosting_with_git/controller/project_controller.dart';

class ProjectListScreen extends StatelessWidget {
  const ProjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProjectController>();

    return Obx(() {
      if (controller.filtered.isEmpty) {
        return const Text('No projects');
      }
      return ListView.builder(
        itemCount: controller.filtered.length,
        itemBuilder: (context, index) {
          final project = controller.filtered[index];
          return ListTile(
            title: Text(project.title),
            subtitle: Text(project.category),
          );
        },
      );
    });
  }
}
