// To parse this JSON data, do
//
//     final detailTrackResponse = detailTrackResponseFromJson(jsonString);

// ignore_for_file: deprecated_member_use

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'main_player_response.g.dart';

DetailTrackResponse detailTrackResponseFromJson(String str) =>
    DetailTrackResponse.fromJson(json.decode(str));

String detailTrackResponseToJson(DetailTrackResponse data) =>
    json.encode(data.toJson());

@JsonSerializable(nullable: true)
class DetailTrackResponse {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "readable")
  bool readable;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "title_short")
  String titleShort;
  @JsonKey(name: "title_version")
  String titleVersion;
  @JsonKey(name: "isrc")
  String isrc;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "share")
  String share;
  @JsonKey(name: "duration")
  int duration;
  @JsonKey(name: "track_position")
  int trackPosition;
  @JsonKey(name: "disk_number")
  int diskNumber;
  @JsonKey(name: "rank")
  int rank;
  @JsonKey(name: "release_date")
  DateTime releaseDate;
  @JsonKey(name: "explicit_lyrics")
  bool explicitLyrics;
  @JsonKey(name: "explicit_content_lyrics")
  int explicitContentLyrics;
  @JsonKey(name: "explicit_content_cover")
  int explicitContentCover;
  @JsonKey(name: "preview")
  String preview;
  @JsonKey(name: "bpm")
  double bpm;
  @JsonKey(name: "gain")
  double gain;
  @JsonKey(name: "available_countries")
  List<String> availableCountries;
  @JsonKey(name: "contributors")
  List<Artist> contributors;
  @JsonKey(name: "md5_image")
  String md5Image;
  @JsonKey(name: "artist")
  Artist artist;
  @JsonKey(name: "album")
  Album album;
  @JsonKey(name: "type")
  String type;

  DetailTrackResponse({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    required this.titleVersion,
    required this.isrc,
    required this.link,
    required this.share,
    required this.duration,
    required this.trackPosition,
    required this.diskNumber,
    required this.rank,
    required this.releaseDate,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.bpm,
    required this.gain,
    required this.availableCountries,
    required this.contributors,
    required this.md5Image,
    required this.artist,
    required this.album,
    required this.type,
  });

  factory DetailTrackResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailTrackResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailTrackResponseToJson(this);
}

@JsonSerializable(nullable: true)
class Album {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "cover")
  String cover;
  @JsonKey(name: "cover_small")
  String coverSmall;
  @JsonKey(name: "cover_medium")
  String coverMedium;
  @JsonKey(name: "cover_big")
  String coverBig;
  @JsonKey(name: "cover_xl")
  String coverXl;
  @JsonKey(name: "md5_image")
  String md5Image;
  @JsonKey(name: "release_date")
  DateTime releaseDate;
  @JsonKey(name: "tracklist")
  String tracklist;
  @JsonKey(name: "type")
  String type;

  Album({
    required this.id,
    required this.title,
    required this.link,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.releaseDate,
    required this.tracklist,
    required this.type,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable(nullable: true)
class Artist {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "share")
  String share;
  @JsonKey(name: "picture")
  String picture;
  @JsonKey(name: "picture_small")
  String pictureSmall;
  @JsonKey(name: "picture_medium")
  String pictureMedium;
  @JsonKey(name: "picture_big")
  String pictureBig;
  @JsonKey(name: "picture_xl")
  String pictureXl;
  @JsonKey(name: "radio")
  bool radio;
  @JsonKey(name: "tracklist")
  String tracklist;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "role")
  String? role;

  Artist({
    required this.id,
    required this.name,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.radio,
    required this.tracklist,
    required this.type,
    this.role,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}
