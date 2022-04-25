class SongsModel {
  int? id;
  String? name;
  String? artist;
  String? cover;
  String? lyric;
  int? rating;

  SongsModel({this.id, this.name, this.artist, this.cover, this.rating});

  SongsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    artist = json['artist'];
    cover = json['cover'];
    lyric = json['lyric'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['artist'] = artist;
    data['cover'] = cover;
    data['lyric'] = lyric;
    data['rating'] = rating;
    return data;
  }
}
