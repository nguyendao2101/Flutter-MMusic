import 'package:app_nghe_nhac/model/album/album_response.dart';
import 'package:app_nghe_nhac/network/config/config.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'album_retrofit.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class AlbumApiRetrofit {
  factory AlbumApiRetrofit(Dio dio, {String baseUrl}) = _AlbumApiRetrofit;
  @GET("/album/{id}")
  Future<GetMusicChartResponse> getListAlbum(@Path() int id);
}
