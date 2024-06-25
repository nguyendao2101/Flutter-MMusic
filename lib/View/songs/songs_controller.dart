import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:get/get.dart';

class SongsController extends GetxController {
  // All Songs
  final allSongsList = [
    {
      "image": ImagesAssset.s2,
      "name": "Billie Jean",
      "artists": "Michael Jackson"
    },
    {"image": ImagesAssset.s3, "name": "Be the girl", "artists": "Bebe Rexa"},
    {"image": ImagesAssset.s4, "name": "Countryman", "artists": "Daughtry"},
    {
      "image": ImagesAssset.s5,
      "name": "Do you feel lonelyness",
      "artists": "Marc Anthony"
    },
    {
      "image": ImagesAssset.s6,
      "name": "Earth song",
      "artists": "Michael Jackson"
    },
    {
      "image": ImagesAssset.s7,
      "name": "Smooth criminal",
      "artists": "Michael Jackson"
    },
    {
      "image": ImagesAssset.s8,
      "name": "The way you make me feel",
      "artists": "Michael Jackson"
    },
    {
      "image": ImagesAssset.s9,
      "name": "Somebody that I used to know",
      "artists": "Gotye"
    },
    {
      "image": ImagesAssset.s10,
      "name": "Wild Thoughts",
      "artists": "Michael Jackson"
    }
  ].obs;

  //PlayList
  final playlistArr = [
    {
      "image": ImagesAssset.playlist1,
      "name": "My Top Tracks",
      "songs": "100 Songs"
    },
    {
      "image": ImagesAssset.playlist2,
      "name": "Latest Added",
      "songs": "323 Songs"
    },
    {"image": ImagesAssset.playlist3, "name": "History", "songs": "450 Songs"},
    {"image": ImagesAssset.playlist4, "name": "Favorites", "songs": "966 Songs"}
  ].obs;

  final myPlaylistArr = [
    {"image": ImagesAssset.mp1, "name": "Queens Collection"},
    {"image": ImagesAssset.mp2, "name": "Rihanna Collection"},
    {"image": ImagesAssset.mp3, "name": "MJ Collection"},
    {"image": ImagesAssset.mp4, "name": "Classical Collection"}
  ].obs;

  //Album
  final allAlbumList = [
    {
      "image": ImagesAssset.album1,
      "name": "History",
      "artists": "Michael Jackson",
      "songs": "10 Songs"
    },
    {
      "image": ImagesAssset.album2,
      "name": "Thriller",
      "artists": "Michael Jackson",
      "songs": "10 Songs"
    },
    {
      "image": ImagesAssset.album3,
      "name": "It Won't Be Soon. . ",
      "artists": "Maroon 5",
      "songs": "10 Songs"
    },
    {
      "image": ImagesAssset.album4,
      "name": "I Am... Yours",
      "artists": "Beyonce",
      "songs": "10 Songs"
    },
    {
      "image": ImagesAssset.album5,
      "name": "Earth song",
      "artists": "Michael Jackson",
      "songs": "10 Songs"
    },
    {
      "image": ImagesAssset.album6,
      "name": "Smooth criminal",
      "artists": "Michael Jackson",
      "songs": "10 Songs"
    }
  ].obs;

  final playedAlbumArr = [
    {"duration": "3:56", "name": "Billie Jean", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Earth Song", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Mirror", "artists": "Justin Timberlake"},
    {
      "duration": "3:56",
      "name": "Remember the Time",
      "artists": "Michael Jackson"
    },
    {"duration": "3:56", "name": "Billie Jean", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Earth Song", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Mirror", "artists": "Justin Timberlake"},
    {
      "duration": "3:56",
      "name": "Remember the Time",
      "artists": "Michael Jackson"
    },
    {"duration": "3:56", "name": "Billie Jean", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Earth Song", "artists": "Michael Jackson"},
    {"duration": "3:56", "name": "Mirror", "artists": "Justin Timberlake"},
    {
      "duration": "3:56",
      "name": "Remember the Time",
      "artists": "Michael Jackson"
    }
  ].obs;
  //Artists
  //Genres
}
