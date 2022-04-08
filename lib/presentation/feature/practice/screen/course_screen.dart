import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/course/course.dart';
import 'package:portfolio_app/presentation/feature/practice/view/course_view.dart';

class CourseScreen extends StatelessWidget {
  final Course course;
  const CourseScreen({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CourseView(
      course: course,
    );
  }
}
