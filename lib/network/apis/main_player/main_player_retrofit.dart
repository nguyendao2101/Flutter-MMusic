import 'package:app_nghe_nhac/model/main_player/main_player_response.dart';
import 'package:app_nghe_nhac/network/config/config.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'main_player_retrofit.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class MainPlayerApiRetrofit {
  factory MainPlayerApiRetrofit(Dio dio, {String baseUrl}) =
      _MainPlayerApiRetrofit;
  @GET("/track/{id}")
  Future<DetailTrackResponse> getMainPlayer(@Path('id') String id);
}
