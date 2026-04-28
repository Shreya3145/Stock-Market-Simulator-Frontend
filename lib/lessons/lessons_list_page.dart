import 'package:flutter/material.dart';
import 'package:stockmarket_simulator_1/lessons/widgets/lesson_card.dart';

class LessonsListPage extends StatefulWidget {
  const LessonsListPage({super.key});

  @override
  State<LessonsListPage> createState() {
    return _LessonsListPage();
  }
}

class _LessonsListPage extends State<LessonsListPage> {
  final List _lessons = [
    'Lesson 1',
    'Lesson 2',
    'Lesson 3',
    'Lesson 4',
    'Lesson 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Lessons',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: _lessons.length,
            itemBuilder: (context, index) {
              return LessonCard(
                title: _lessons[index],
                lessonNumber: index + 1,
                isLocked: index != 0,
              );
            }));
  }
}
