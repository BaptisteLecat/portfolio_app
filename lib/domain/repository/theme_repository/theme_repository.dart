import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/theme_repository/theme_repository.dart'
    as dataThemeRepository;
import 'package:portfolio_app/domain/entity/theme/theme.dart';

class ThemeRepository {
  dataThemeRepository.ThemeRepository _themeRepository =
      dataThemeRepository.ThemeRepository();

  Future<List<Theme>> getOne(Contract theme) async {
    return Theme.fromDataModel(await _themeRepository.fetchOne(id: theme.id!));
  }

  Future<List<Theme>> getAll() async {
    return Theme.listFromMapData(await _themeRepository.fetchAll(params: ''));
  }

  Future<Theme> create(Theme theme) async {
    return Theme.fromDataModel(
        await _themeRepository.insert(body: theme.toDataModel()));
  }

  Future<Theme> update(Theme theme) async {
    return Theme.fromDataModel(
        await _themeRepository.update(body: theme.toDataModel()));
  }

  Future<bool> delete(Theme theme) async {
    return await _themeRepository.remove(id: theme.id!);
  }
}
