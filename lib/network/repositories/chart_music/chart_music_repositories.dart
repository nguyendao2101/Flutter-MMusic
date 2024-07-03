import 'package:app_nghe_nhac/model/chart_music/chart_music_response.dart';
import 'package:app_nghe_nhac/network/apis/chart_music/chart_music_retrofit.dart';
import 'package:app_nghe_nhac/network/config/date_state.dart';
import 'package:dio/dio.dart';

class ChartMusicRepository {
  Future<DataState<GetMusicChartResponse?>> getListChartMusic() async {
    final responseFromApi =
        await ChartMusicApiRetrofit(Dio()).getListChartMusic();
    return DataSuccess(data: responseFromApi);
  }
}
