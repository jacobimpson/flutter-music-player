import 'package:scoped_model/scoped_model.dart';
import '../models/song.dart';
import '../models/media_controls.dart';

class ScopedMediaControls extends Model {
  MediaControls mediaControls = MediaControls();

  play([Song song]) {
    if (song is Song) {
      mediaControls.play(song);
      mediaControls.activeSong = song;
    }

    mediaControls.isPlaying = true;
    notifyListeners();
  }

  pause() {
    mediaControls.pause();
    mediaControls.isPlaying = false;
    notifyListeners();
  }
}
