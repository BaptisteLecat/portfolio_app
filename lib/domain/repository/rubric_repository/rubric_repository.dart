import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/rubric_repository/rubric_repository.dart'
    as dataRubricRepository;

class RubricRepository {
  dataRubricRepository.RubricRepository _rubricRepository =
      dataRubricRepository.RubricRepository();

  Future<List<Rubric>> getOne(Rubric rubric) async {
    return Rubric.fromDataModel(
        await _rubricRepository.fetchOne(id: rubric.id!));
  }

  Future<List<Rubric>> getAll() async {
    return Rubric.listFromMapData(await _rubricRepository.fetchAll(params: ''));
  }

  Future<Rubric> create(Rubric rubric) async {
    return Rubric.fromDataModel(
        await _rubricRepository.insert(body: rubric.toDataModel()));
  }

  Future<Rubric> update(Rubric rubric) async {
    return Rubric.fromDataModel(
        await _rubricRepository.update(body: rubric.toDataModel()));
  }

  Future<bool> delete(Rubric rubric) async {
    return await _rubricRepository.remove(id: rubric.id!);
  }
}
