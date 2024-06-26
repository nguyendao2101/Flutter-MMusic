import 'package:app_nghe_nhac/model/chart_music/chart_music_response.dart';
import 'package:app_nghe_nhac/network/config/config.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'chart_music_retrofit.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class ChartMusicApiRetrofit {
  factory ChartMusicApiRetrofit(Dio dio, {String baseUrl}) =
      _ChartMusicApiRetrofit;
  @GET("/chart")
  Future<GetMusicChartResponse> getListChartMusic();
}
