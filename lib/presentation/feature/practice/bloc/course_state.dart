part of 'course_bloc.dart';

enum CourseStatus {
  initial,
  success,
  failure,
  inProgress,
  select,
  creation,
  cancelCreation,
  confirmCreation,
  created,
  deleted,
  updated
}

extension CourseStatusX on CourseStatus {
  bool get initial => this == CourseStatus.initial;
  bool get success => this == CourseStatus.success;
  bool get failure => this == CourseStatus.failure;
  bool get inProgress => this == CourseStatus.inProgress;
  bool get select => this == CourseStatus.select;
  bool get creation => this == CourseStatus.creation;
  bool get cancelCreation => this == CourseStatus.cancelCreation;
  bool get confirmCreation => this == CourseStatus.confirmCreation;
  bool get created => this == CourseStatus.created;
  bool get deleted => this == CourseStatus.deleted;
  bool get updated => this == CourseStatus.updated;
}

class CourseState extends Equatable {
  const CourseState(
      {this.status = CourseStatus.initial,
      this.message = '',
      List<Course>? courses,
      Course? course})
      : courses = courses ?? const [],
        course = course ?? Course.empty;

  final CourseStatus status;
  final String message;
  final List<Course> courses;
  final Course course;

  @override
  List<Object> get props => [status, message];

  CourseState copyWith(
      {CourseStatus? status,
      String? message,
      List<Course>? courses,
      Course? course}) {
    return CourseState(
      status: status ?? this.status,
      message: message ?? this.message,
      courses: courses ?? this.courses,
      course: course ?? this.course,
    );
  }
}
