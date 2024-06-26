import 'package:app_nghe_nhac/model/chart_music/chart_music_response.dart';
import 'package:app_nghe_nhac/network/apis/album/album_retrofit.dart';
import 'package:app_nghe_nhac/network/config/date_state.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  Future<DataState<GetMusicChartResponse?>> getListAlbum(int id) async {
    final responseFromApi = await AlbumApiRetrofit(Dio()).getListAlbum(id);
    if (responseFromApi.albums != null) {
      return DataSuccess(data: responseFromApi);
    } else {
      return DataFailed(data: responseFromApi);
    }
  }
}
