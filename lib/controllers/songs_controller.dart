import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guitar_chords/models/artists_model.dart';
import 'package:guitar_chords/models/songs_model.dart';

class SongsController {
  Stream<List<SongsModel>> readSongs() {
    return FirebaseFirestore.instance.collection('songs').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((e) => SongsModel.fromJson(e.data())).toList());
  }

  Stream<List<ArtistsModel>> readArtists() {
    return FirebaseFirestore.instance.collection('artists').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((e) => ArtistsModel.fromJson(e.data())).toList());
  }
}
