import 'package:portfolio_app/domain/entity/technology/technology.dart';
import 'package:portfolio_app/data/api/repository/technology_repository/technology_repository.dart'
    as dataTechnologyRepository;

class TechnologyRepository {
  dataTechnologyRepository.TechnologyRepository _technologyRepository =
      dataTechnologyRepository.TechnologyRepository();

  Future<List<Technology>> getOne(Technology technology) async {
    return Technology.fromDataModel(
        await _technologyRepository.fetchOne(id: technology.id!));
  }

  Future<List<Technology>> getAll() async {
    return Technology.listFromMapData(
        await _technologyRepository.fetchAll(params: ''));
  }

  Future<Technology> create(Technology technology) async {
    return Technology.fromDataModel(
        await _technologyRepository.insert(body: technology.toDataModel()));
  }

  Future<Technology> update(Technology technology) async {
    return Technology.fromDataModel(
        await _technologyRepository.update(body: technology.toDataModel()));
  }

  Future<bool> delete(Technology technology) async {
    return await _technologyRepository.remove(id: technology.id!);
  }
}
