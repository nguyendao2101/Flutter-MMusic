// part of 'album_response.g.dart';

// @JsonSerializable()
// class GetListAmbumTracks {
//   @JsonKey(name: "tracks")
//   Tracks tracks;

//   GetListAmbumTracks({
//     required this.tracks,
//   });

//   factory GetListAmbumTracks.fromJson(Map<String, dynamic> json) =>
//       _$GetListAmbumTracksFromJson(json);

//   Map<String, dynamic> toJson() => _$GetListAmbumTracksToJson(this);
// }

// @JsonSerializable()
// class Tracks {
//   @JsonKey(name: "AlbumTracks")
//   List<AlbumTrack> albumTracks;

//   Tracks({
//     required this.albumTracks,
//   });

//   factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

//   Map<String, dynamic> toJson() => _$TracksToJson(this);
// }

// @JsonSerializable()
// class AlbumTrack {
//   @JsonKey(name: "id")
//   int id;
//   @JsonKey(name: "readable")
//   bool readable;
//   @JsonKey(name: "title")
//   String title;
//   @JsonKey(name: "title_short")
//   String titleShort;
//   @JsonKey(name: "title_version")
//   String titleVersion;
//   @JsonKey(name: "link")
//   String link;
//   @JsonKey(name: "duration")
//   int duration;
//   @JsonKey(name: "rank")
//   int rank;
//   @JsonKey(name: "explicit_lyrics")
//   bool explicitLyrics;
//   @JsonKey(name: "explicit_content_lyrics")
//   int explicitContentLyrics;
//   @JsonKey(name: "explicit_content_cover")
//   int explicitContentCover;
//   @JsonKey(name: "preview")
//   String preview;
//   @JsonKey(name: "md5_image")
//   Md5Image md5Image;
//   @JsonKey(name: "artist")
//   Artist artist;
//   @JsonKey(name: "album")
//   Album album;
//   @JsonKey(name: "type")
//   AlbumTrackType type;

//   AlbumTrack({
//     required this.id,
//     required this.readable,
//     required this.title,
//     required this.titleShort,
//     required this.titleVersion,
//     required this.link,
//     required this.duration,
//     required this.rank,
//     required this.explicitLyrics,
//     required this.explicitContentLyrics,
//     required this.explicitContentCover,
//     required this.preview,
//     required this.md5Image,
//     required this.artist,
//     required this.album,
//     required this.type,
//   });

//   factory AlbumTrack.fromJson(Map<String, dynamic> json) =>
//       _$AlbumTrackFromJson(json);

//   Map<String, dynamic> toJson() => _$AlbumTrackToJson(this);
// }

// @JsonSerializable()
// class Album {
//   @JsonKey(name: "id")
//   int id;
//   @JsonKey(name: "title")
//   Title title;
//   @JsonKey(name: "cover")
//   String cover;
//   @JsonKey(name: "cover_small")
//   String coverSmall;
//   @JsonKey(name: "cover_medium")
//   String coverMedium;
//   @JsonKey(name: "cover_big")
//   String coverBig;
//   @JsonKey(name: "cover_xl")
//   String coverXl;
//   @JsonKey(name: "md5_image")
//   Md5Image md5Image;
//   @JsonKey(name: "tracklist")
//   String tracklist;
//   @JsonKey(name: "type")
//   AlbumType type;

//   Album({
//     required this.id,
//     required this.title,
//     required this.cover,
//     required this.coverSmall,
//     required this.coverMedium,
//     required this.coverBig,
//     required this.coverXl,
//     required this.md5Image,
//     required this.tracklist,
//     required this.type,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

//   Map<String, dynamic> toJson() => _$AlbumToJson(this);
// }

// enum Md5Image {
//   @JsonValue("2e018122cb56986277102d2041a592c8")
//   THE_2_E018122_CB56986277102_D2041_A592_C8
// }

// enum Title {
//   @JsonValue("Discovery")
//   DISCOVERY
// }

// enum AlbumType {
//   @JsonValue("album")
//   ALBUM
// }

// @JsonSerializable()
// class Artist {
//   @JsonKey(name: "id")
//   int id;
//   @JsonKey(name: "name")
//   Name name;
//   @JsonKey(name: "tracklist")
//   String tracklist;
//   @JsonKey(name: "type")
//   ArtistType type;

//   Artist({
//     required this.id,
//     required this.name,
//     required this.tracklist,
//     required this.type,
//   });

//   factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

//   Map<String, dynamic> toJson() => _$ArtistToJson(this);
// }

// enum Name {
//   @JsonValue("Daft Punk")
//   DAFT_PUNK
// }

// enum ArtistType {
//   @JsonValue("artist")
//   ARTIST
// }

// enum AlbumTrackType {
//   @JsonValue("track")
//   TRACK
// }
