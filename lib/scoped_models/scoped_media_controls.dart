import 'package:scoped_model/scoped_model.dart';
import '../models/song.dart';
import '../models/media_controls.dart';

class ScopedMediaControls extends Model {
  MediaControls mediaControls = MediaControls();

  play([Song song]) {
    mediaControls.isPlaying = true;
    if (song != null) mediaControls.activeSong = song;
    notifyListeners();
  }

  pause() {
    mediaControls.isPlaying = false;
    notifyListeners();
  }

  setActiveSong(Song song) {
    mediaControls.activeSong = song;
    notifyListeners();
  }
}
