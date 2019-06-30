class Album {
  const Album({
    this.artist,
    this.image,
    this.releaseYear,
    this.title,
    this.tracks,
  });
  final Artist artist;
  final int releaseYear;
  final List<Song> tracks;
  final String image;
  final String title;
}

class Artist {
  const Artist({this.image, this.name});
  final String image;
  final String name;
}

class Song {
  const Song({this.audioFile, this.title});
  final String audioFile;
  final String title;
}
