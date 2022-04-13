import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/location_repository/location_repository.dart'
    as dataLocationRepository;

class LocationRepository {
  dataLocationRepository.LocationRepository _locationRepository =
      dataLocationRepository.LocationRepository();

  Future<List<Location>> getOne(Location location) async {
    return Location.fromDataModel(
        await _locationRepository.fetchOne(id: location.id!));
  }

  Future<List<Location>> getAll() async {
    return Location.listFromMapData(
        await _locationRepository.fetchAll(params: ''));
  }

  Future<Location> create(Location location) async {
    return Location.fromDataModel(
        await _locationRepository.insert(body: location.toDataModel()));
  }

  Future<Location> update(Location location) async {
    return Location.fromDataModel(
        await _locationRepository.update(body: location.toDataModel()));
  }

  Future<bool> delete(Location location) async {
    return await _locationRepository.remove(id: location.id!);
  }
}
