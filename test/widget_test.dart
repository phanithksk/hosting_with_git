import 'package:flutter_test/flutter_test.dart';
import 'package:hosting_with_git/models/project.dart';

void main() {
  group('Filter logic test', () {
    final projects = [
      Project(title: 'A', category: 'Web'),
      Project(title: 'B', category: 'Mobile'),
      Project(title: 'C', category: 'Web'),
    ];

    test('filter by Web', () {
      final result = projects.where((p) => p.category == 'Web').toList();
      expect(result.length, 2);
    });
  });
}
