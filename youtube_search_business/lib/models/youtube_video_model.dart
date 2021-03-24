import 'dart:convert';


class YoutubeVideoModel {
  
  String id;
  String title;
  String thumbnail;
  
  YoutubeVideoModel({
    required this.id,
    required this.title,
    required this.thumbnail,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'thumbnail': thumbnail,
    };
  }

  factory YoutubeVideoModel.fromMap(Map<String, dynamic> map) {
    return YoutubeVideoModel(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory YoutubeVideoModel.fromJson(String source) => YoutubeVideoModel.fromMap(json.decode(source));
}
