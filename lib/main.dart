import 'package:flutter/material.dart';
import 'classes.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music Player Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: ListView.builder(
          itemCount: albums.length,
          itemBuilder: (BuildContext context, int index) {
            Album album = albums[index];
            return Row(
              children: <Widget>[
                InkWell(
                  onTap: () => {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          width: 96.0,
                          height: 96.0,
                          color: Colors.black26,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                Divider()
              ],
            );
          },
        ),
      ),
    );
  }
}
