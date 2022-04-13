import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/mission_repository/mission_repository.dart'
    as dataMissionRepository;

class MissionRepository {
  dataMissionRepository.MissionRepository _missionRepository =
      dataMissionRepository.MissionRepository();

  Future<List<Mission>> getOne(Mission mission) async {
    return Mission.fromDataModel(
        await _missionRepository.fetchOne(id: mission.id!));
  }

  Future<List<Mission>> getAll() async {
    return Mission.listFromMapData(
        await _missionRepository.fetchAll(params: ''));
  }

  Future<Mission> create(Mission mission) async {
    return Mission.fromDataModel(
        await _missionRepository.insert(body: mission.toDataModel()));
  }

  Future<Mission> update(Mission mission) async {
    return Mission.fromDataModel(
        await _missionRepository.update(body: mission.toDataModel()));
  }

  Future<bool> delete(Mission mission) async {
    return await _missionRepository.remove(id: mission.id!);
  }
}
