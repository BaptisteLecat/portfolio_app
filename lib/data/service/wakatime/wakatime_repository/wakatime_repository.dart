import 'dart:convert';
import 'package:portfolio_app/data/service/wakatime/model/language.dart';
import 'package:portfolio_app/data/service/wakatime/model/wakatime_code_activity.dart';
import 'package:portfolio_app/data/service/wakatime/wakatime_main_fetcher.dart'
    as fetcher;

class WakatimeRepository with fetcher.WakatimeMainFetcher {
  //static String ressource = 'wakatime';

  Future fetchCodingActivity(
      {String? params, Map<String, String>? headers}) async {
    var response = await get(
      url:
          '/share/@4b50c951-10fe-4275-a96e-6cd65a416a3e/cde36665-83b2-40fb-80c1-a01d30e490d0.json',
    );
    return WakatimeCodeActivity.listFromJson(
        json.decode(response.content)["data"]);
  }

  Future fetchLanguageActivity(
      {String? params, Map<String, String>? headers}) async {
    var response = await get(
      url:
          '/share/@4b50c951-10fe-4275-a96e-6cd65a416a3e/635264b8-ed8e-48de-946d-142fdf2a7f24.json',
    );
    return Language.listFromJson(json.decode(response.content)["data"]);
  }
}
