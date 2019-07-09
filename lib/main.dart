import 'package:flutter/material.dart';
import 'album_list_item.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music Player Demo',
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Albums")),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (BuildContext context, int index) {
          return AlbumListTile(album: albums[index]);
        },
      ),
    );
  }
}
