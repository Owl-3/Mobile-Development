// import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:untitled/Next.dart';

import 'Next.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Trump'),
              accountEmail: new Text('t@alustudent.com'),
              currentAccountPicture: new CircleAvatar(
                  backgroundImage:
                      new NetworkImage("https://i.pravatar.cc/300 ")),
            ),
            new ListTile(
              title: Text('Next Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext builder) => new nextPage()));
              },
            ),
          ],
        ),
      ),
      body: FittedBox(
        child: Container(
          padding: const EdgeInsets.all(40.0), // padding the container box
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 400.0, //setting the measurements of sized box
                width: 700.0,
                child: Image.asset(
                  'assets/act2.jpg',
                  // putting height exceeding set sized box size
                  // image remains within the 90 by 90 measurements despite exceeding
                ),
              ),
              ConstrainedBox(
                // contraining the box to specified values
                constraints: const BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                    minHeight: 300,
                    minWidth: 300),
                child: RotatedBox(
                  // rotating the image with 2 quarter turns
                  quarterTurns: 2,
                  // loading images from the yaml file, locally
                  child: Image.asset(
                    'assets/act2.jpg',
                    height:
                        700, // exceeding the constraining values. the image will still stay withing the constraining measurements
                    width: 700,
                  ),
                ),
              ),
              // loading image from the internet
              // this image is too big to fit in the screen, Fitted Box makes it fit
              Image.network(
                  // for the image to be rendered, run 'flutter run --web-renderer html' on the terminal
                  "https://wallpapers.com/images/featured/army-fmyvbfpcbu03f4vq.jpg")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.font_download_sharp),
        // using flutter icons
      ),
    );
  }
}

// Note to Jocelyne: add font_awesome icons, side menu and pop up menus