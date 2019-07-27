import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped_models/scoped_media_controls.dart';

class PlayPauseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedMediaControls>(
      builder: (context, child, model) => FloatingActionButton(
        child: Icon(
          model.mediaControls.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
        onPressed: () {
          model.mediaControls.isPlaying
              ? model.pause()
              : model.play(model.mediaControls.activeSong);
        },
      ),
    );
  }
}
