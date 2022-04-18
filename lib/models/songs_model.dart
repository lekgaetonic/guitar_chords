class SongsModel {
  int? id;
  String? name;
  String? artist;
  String? cover;

  SongsModel({this.id, this.name, this.artist, this.cover});

  SongsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    artist = json['artist'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['artist'] = artist;
    data['cover'] = cover;
    return data;
  }
}