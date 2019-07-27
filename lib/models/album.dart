import 'artist.dart';
import 'song.dart';

class Album {
  const Album({
    this.artist,
    this.image,
    this.releaseYear,
    this.title,
    this.songs,
  });
  final Artist artist;
  final int releaseYear;
  final List<Song> songs;
  final String image;
  final String title;
}
