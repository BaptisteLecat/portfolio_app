import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/work_repository/work_repository.dart'
    as dataWorkRepository;

class WorkRepository {
  dataWorkRepository.WorkRepository _workRepository =
      dataWorkRepository.WorkRepository();

  Future<List<Work>> getOne(Contract work) async {
    return Work.fromDataModel(await _workRepository.fetchOne(id: work.id!));
  }

  Future<List<Work>> getAll() async {
    return Work.listFromMapData(await _workRepository.fetchAll(params: ''));
  }

  Future<Work> create(Work work) async {
    return Work.fromDataModel(
        await _workRepository.insert(body: work.toDataModel()));
  }

  Future<Work> update(Work work) async {
    return Work.fromDataModel(
        await _workRepository.update(body: work.toDataModel()));
  }

  Future<bool> delete(Work work) async {
    return await _workRepository.remove(id: work.id!);
  }
}
