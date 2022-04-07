import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/school_repository/school_repository.dart'
    as dataSchoolRepository;

class SchoolRepository {
  dataSchoolRepository.SchoolRepository _schoolRepository =
      dataSchoolRepository.SchoolRepository();

  Future<List<School>> getOne(Contract school) async {
    return School.fromDataModel(
        await _schoolRepository.fetchOne(id: school.id!));
  }

  Future<List<School>> getAll() async {
    return School.listFromMapData(await _schoolRepository.fetchAll(params: ''));
  }

  Future<School> create(School school) async {
    return School.fromDataModel(
        await _schoolRepository.insert(body: school.toDataModel()));
  }

  Future<School> update(School school) async {
    return School.fromDataModel(
        await _schoolRepository.update(body: school.toDataModel()));
  }

  Future<bool> delete(School school) async {
    return await _schoolRepository.remove(id: school.id!);
  }
}
