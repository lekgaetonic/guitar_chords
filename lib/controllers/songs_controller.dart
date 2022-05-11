import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guitar_chords/models/artists_model.dart';
import 'package:guitar_chords/models/genres_model.dart';
import 'package:guitar_chords/models/songs_model.dart';

class SongsController {
  Future<DocumentReference> addSong(
      String artist, String cover, String name, String lyric) {
    final song = <String, dynamic>{
      "id": 7,
      "artist": "เอ๊ะ จิรากร",
      "cover":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMDmluaZUhvLlU4RSowRvEwC3OU1IJWlEA3Py5kb6zMxZZlGFAwmpS7Kgki2s426AaNOs&usqp=CAU",
      "name": "จากนี้ไปจนนิรันดร์",
      "lyric":
          "/ Gmaj7 / Em7 / C Bm7 / Am7 D /<br/><span>&emsp;&emsp;&emsp;G&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Em7</span><br/>แค่ได้มองตาเธอในวันนั้น จากที่เราเจอกันแค่ครั้งเดียว",
      "rating": 2
    };

    return FirebaseFirestore.instance.collection('songs').add(song);
  }

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

  Stream<List<GenresModel>> readGenres() {
    return FirebaseFirestore.instance.collection('genres').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((e) => GenresModel.fromJson(e.data())).toList());
  }
}
