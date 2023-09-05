// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

List<Album> albumFromJson(String str) => List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

String albumToJson(List<Album> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Album extends Equatable  {
    Album({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    final int  albumId;
    final int id;
    final String title;
    final String url;
    final String thumbnailUrl;

    factory Album.fromJson(Map<String, dynamic> json) => Album(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };

  @override
  // TODO: implement props
  List<Object?> get props => [url,thumbnailUrl,id, albumId,title];

  @override
  // TODO: implement stringify
  bool? get stringify => super.stringify;
}
