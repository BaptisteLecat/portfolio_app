import 'package:bloc/bloc.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/entity/course/course.dart';
import 'package:portfolio_app/domain/repository/course_repository/course_repository.dart';
import 'package:equatable/equatable.dart';
part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseRepository _courseRepository = CourseRepository();
  CourseBloc() : super(const CourseState()) {
    on<CourseReset>(_onReset);
    on<CourseSelect>(_onSelect);
    on<CourseFetchAll>(_onFetchAll);
    on<CourseCreation>(_onCreateCourse);
    on<CourseCancelCreation>(_onCancelCreation);
    on<CourseConfirmCreation>(_onConfirmCreation);
    on<CourseUpdate>(_onUpdate);
    on<CourseDelete>(_onDelete);
  }

  _onSelect(
    CourseSelect event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.select,
      message: '',
      course: event.course,
    ));
  }

  _onReset(
    CourseReset event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.initial,
      message: '',
      course: Course.empty,
      courses: const [],
    ));
  }

  _onCreateCourse(
    CourseCreation event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.creation,
    ));
  }

  _onCancelCreation(
    CourseCancelCreation event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.cancelCreation,
    ));
  }

  _onConfirmCreation(
    CourseConfirmCreation event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.inProgress,
    ));
    try {
      await _courseRepository.create(event.course).then((value) {
        emit(state.copyWith(
          status: CourseStatus.created,
          message: '',
          course: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: CourseStatus.failure,
          message: error.message,
          course: Course.empty,
          courses: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: CourseStatus.failure,
        message: e.toString(),
        course: Course.empty,
        courses: const [],
      ));
    }
  }

  _onUpdate(
    CourseUpdate event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _courseRepository.update(event.course).then((value) {
        emit(state.copyWith(
          status: CourseStatus.updated,
          message: '',
          course: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: CourseStatus.failure,
          message: error.message,
          course: Course.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: CourseStatus.failure,
        message: e.toString(),
        course: Course.empty,
        courses: const [],
      ));
    }
  }

  _onDelete(
    CourseDelete event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _courseRepository.delete(event.course).then((value) {
        emit(state.copyWith(
          status: CourseStatus.deleted,
          message: '',
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: CourseStatus.failure,
          message: error.message,
          course: Course.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: CourseStatus.failure,
        message: e.toString(),
        course: Course.empty,
        courses: const [],
      ));
    }
  }

  _onFetchAll(
    CourseFetchAll event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(
      status: CourseStatus.inProgress,
      message: '',
      course: Course.empty,
      courses: const [],
    ));
    try {
      await _courseRepository.getAll().then((value) {
        print(value.toString());
        emit(state.copyWith(
          status: CourseStatus.success,
          message: '',
          course: Course.empty,
          courses: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: CourseStatus.failure,
          message: error.message,
          course: Course.empty,
          courses: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: CourseStatus.failure,
        message: e.toString(),
        course: Course.empty,
        courses: const [],
      ));
    }
  }
}
