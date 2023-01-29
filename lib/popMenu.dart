import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Popup Menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const <Widget>[
          PopUpOptionMenu(),
        ],
      ),
      body: const Center(),
    ); //Scaffold
  }
}

enum MenuOption { Start, Draft, Discard }

class PopUpOptionMenu extends StatelessWidget {
  const PopUpOptionMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          const PopupMenuItem(
            // child: Text('Start'),
            child: Icon(Icons.start),
            value: MenuOption.Start,
          ),
          const PopupMenuItem(
            //  child: Text('Draft'),
            child: Icon(Icons.drafts),
            value: MenuOption.Draft,
          ),
          const PopupMenuItem(
            // child: Text('Discard'),
            child: Icon(Icons.cancel),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}
