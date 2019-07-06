import 'package:flutter/material.dart';
import 'classes.dart';

class AlbumListTile extends StatelessWidget {
  const AlbumListTile({
    Key key,
    @required this.album,
  }) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: 96.0,
                  height: 96.0,
                  color: Colors.black26,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
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
                      Text(
                        album.releaseYear.toString(),
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
