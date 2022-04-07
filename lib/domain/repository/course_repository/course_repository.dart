import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/course_repository/course_repository.dart'
    as dataCourseRepository;

class CourseRepository {
  dataCourseRepository.CourseRepository _courseRepository =
      dataCourseRepository.CourseRepository();

  Future<List<Course>> getOne(Contract course) async {
    return Course.fromDataModel(
        await _courseRepository.fetchOne(id: course.id!));
  }

  Future<List<Course>> getAll() async {
    return Course.listFromMapData(await _courseRepository.fetchAll(params: ''));
  }

  Future<Course> create(Course course) async {
    return Course.fromDataModel(
        await _courseRepository.insert(body: course.toDataModel()));
  }

  Future<Course> update(Course course) async {
    return Course.fromDataModel(
        await _courseRepository.update(body: course.toDataModel()));
  }

  Future<bool> delete(Course course) async {
    return await _courseRepository.remove(id: course.id!);
  }
}
