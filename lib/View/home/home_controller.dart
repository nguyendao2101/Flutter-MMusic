import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:app_nghe_nhac/model/album/album_response.dart';
import 'package:app_nghe_nhac/network/config/date_state.dart';
import 'package:app_nghe_nhac/network/repositories/album_repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum GetListAlbumStatus {
  initial,
  isLoading,
  loaded,
  failed,
  loadmore,
}

class HomeController extends GetxController {
  final txtSearch = TextEditingController().obs;

  List<TrackDetailData> listAlbum = <TrackDetailData>[].obs;
  final getListAlbumStatus = GetListAlbumStatus.initial.obs;

  Future<void> getListALbum(int id) async {
    getListAlbumStatus.value = GetListAlbumStatus.isLoading;
    final getAlbumResponses = await HomeRepository().getListAlbum(id);
    if (getAlbumResponses is DataSuccess) {
      listAlbum = getAlbumResponses.data?.albums?.data ?? [];
    }
    getListAlbumStatus.value = GetListAlbumStatus.loaded;
  }

  //  void getChartMusic() async {
  //   getMusicChartStatus.value = GetMusicChartStatus.isLoading;
  //   final getMusicChartResponse = await HomeRepository().getMusicChart();
  //   if (getMusicChartResponse is DataSuccess) {
  //     listTrackItem.addAll(getMusicChartResponse.data.tracks?.data ?? []);
  //     getMusicChartStatus.value = GetMusicChartStatus.loaded;
  //   }
  //   if (getMusicChartResponse is DataFailed) {
  //     getMusicChartStatus.value = GetMusicChartStatus.failed;
  //   }
  // }
  var scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  final hostRecommendedArr = [
    {
      "image": ImagesAssset.image_1,
      "name": "Sound of Sky",
      "artists": "Dilon Bruce"
    },
    {
      "image": ImagesAssset.image_2,
      "name": "Girl on Fire",
      "artists": "Alecia Keys"
    }
  ].obs;

  final playListArr = [
    {
      "image": ImagesAssset.image_3,
      "name": "Classic Playlist",
      "artists": "Piano Guys"
    },
    {
      "image": ImagesAssset.image_4,
      "name": "Summer Playlist",
      "artists": "Dilon Bruce"
    },
    {
      "image": ImagesAssset.image_5,
      "name": "Pop Music",
      "artists": "Michael Jackson"
    }
  ];

  final recentlyPlayedArr = [
    {"rate": 4, "name": "Billie Jean", "artists": "Michael Jackson"},
    {"rate": 4, "name": "Earth Song", "artists": "Michael Jackson"},
    {"rate": 4, "name": "Mirror", "artists": "Justin Timberlake"},
    {"rate": 4, "name": "Remember the Time", "artists": "Michael Jackson"}
  ].obs;
}
