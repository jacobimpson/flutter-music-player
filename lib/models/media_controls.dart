import 'package:audioplayer/audioplayer.dart';
import 'song.dart';

class MediaControls {
  bool isPlaying = false;
  Song activeSong;
  AudioPlayer audioPlayer = AudioPlayer();

  Future<void> play(Song song) async {
    await audioPlayer.play(song.audioUrl);
  }

  Future<void> pause() async {
    await audioPlayer.pause();
  }
}
