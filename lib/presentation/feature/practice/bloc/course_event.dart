part of 'course_bloc.dart';

abstract class CourseEvent extends Equatable {
  const CourseEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class CourseReset extends CourseEvent {}

class CourseSelect extends CourseEvent {
  final Course course;
  CourseSelect({required this.course}) : super([course]);
}

class CourseFetchAll extends CourseEvent {}

class CourseCreation extends CourseEvent {}

class CourseCancelCreation extends CourseEvent {}

class CourseConfirmCreation extends CourseEvent {
  final Course course;
  CourseConfirmCreation({required this.course}) : super([course]);
}

class CourseUpdate extends CourseEvent {
  final Course course;
  CourseUpdate({required this.course}) : super([course]);
}

class CourseDelete extends CourseEvent {
  final Course course;
  CourseDelete({required this.course}) : super([course]);
}
