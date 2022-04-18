class ArtistsModel {
  int? id;
  String? artist;
  String? cover;

  ArtistsModel({this.id, this.artist, this.cover});

  ArtistsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    artist = json['artist'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['artist'] = artist;
    data['cover'] = cover;
    return data;
  }
}
