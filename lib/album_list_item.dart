import 'package:flutter/material.dart';
import 'package:music_player/album_page.dart';
import 'classes.dart';

class AlbumListTile extends StatelessWidget {
  const AlbumListTile({
    Key key,
    @required this.album,
  }) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 96.0,
          height: 96.0,
          color: Colors.black26,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                album.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(album.artist.name),
            ],
          ),
        ),
      ],
    );
  }
}
