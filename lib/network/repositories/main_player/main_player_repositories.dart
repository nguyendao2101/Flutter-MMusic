import 'package:app_nghe_nhac/model/main_player/main_player_response.dart';
import 'package:app_nghe_nhac/network/apis/main_player/main_player_retrofit.dart';
import 'package:app_nghe_nhac/network/config/date_state.dart';
import 'package:dio/dio.dart';

class SongRepository {
  Future<DataState<DetailTrackResponse>?> getTrackDetailData(String id) async {
    final responseFromApi =
        await MainPlayerApiRetrofit(Dio()).getMainPlayer(id);
    return DataSuccess(data: responseFromApi);
  }
}
