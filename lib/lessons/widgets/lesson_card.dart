import 'package:flutter/material.dart';
import 'package:stockmarket_simulator_1/lessons/lessons_detail_page.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final int lessonNumber;
  final bool isLocked;

  const LessonCard({
    super.key,
    required this.title,
    required this.lessonNumber,
    required this.isLocked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(lessonNumber.toString()),
        ),
        title: Text(title),
        trailing: Icon(
          isLocked ? Icons.lock : Icons.check_circle,
        ),
        onTap: isLocked
            ? null
            : () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LessonsDetailPage()));
              },
      ),
    );
  }
}
