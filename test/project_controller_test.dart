import 'package:flutter_test/flutter_test.dart';
import 'package:hosting_with_git/controller/project_controller.dart';
import 'package:hosting_with_git/models/project.dart';
import 'package:hosting_with_git/services/project_service.dart';
import 'package:mocktail/mocktail.dart';

class MockProjectService extends Mock implements ProjectService {}

void main() {
  late ProjectController controller;
  late MockProjectService mockService;

  setUp(() {
    mockService = MockProjectService();

    when(() => mockService.fetchProjects()).thenAnswer(
      (_) async => [
        Project(title: 'A', category: 'Web'),
        Project(title: 'B', category: 'Mobile'),
      ],
    );

    controller = ProjectController(service: mockService);
  });

  test('loadProjects loads data correctly', () async {
    await controller.loadProjects();
    expect(controller.projects.length, 2);
  });

  test('filterByCategory filters correctly', () async {
    await controller.loadProjects();
    controller.filterByCategory('Mobile');
    expect(controller.filtered.length, 1);
    expect(controller.filtered.first.title, 'B');
  });
}
