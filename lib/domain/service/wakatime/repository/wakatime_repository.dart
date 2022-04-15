import 'package:portfolio_app/data/service/wakatime/wakatime_repository/wakatime_repository.dart'
    as dataWakatimeRepository;
import 'package:portfolio_app/domain/service/wakatime/entity/language/language.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/wakatime_code_activity/wakatime_code_activity.dart';

class WakatimeRepository {
  final dataWakatimeRepository.WakatimeRepository _wakatimeRepository =
      dataWakatimeRepository.WakatimeRepository();

  Future<List<WakatimeCodeActivity>> getCodingActivity() async {
    return WakatimeCodeActivity.listFromMapData(
        await _wakatimeRepository.fetchCodingActivity());
  }

  Future<List<Language>> getLanguageActivity() async {
    return Language.listFromMapData(
        await _wakatimeRepository.fetchLanguageActivity());
  }
}
