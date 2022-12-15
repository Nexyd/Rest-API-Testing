import 'package:flutter/material.dart';
import 'Detail.dart';

class HomePage extends StatefulWidget {
    final String title;

    HomePage(
        { Key key, this.title }
    ) : super(key: key);

    @override
    _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text(
                    widget.title
                )
            ),

            body: new Container(
                child: Center(
                    child: new RaisedButton(
                        onPressed: navigate
                    ),
                )
            )
        );
    }

    void navigate() {
        Navigator.push(
            context, 
            MaterialPageRoute(
                builder: (context) => new Detail() 
            )
        );
    }
}
