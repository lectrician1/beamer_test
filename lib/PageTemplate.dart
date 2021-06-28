import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SelectableText('Linkbase'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: SelectableText('Linkbase'),
              ),
              ListTile(
                title: IntrinsicWidth(child: SelectableText('Home')),
                onTap: () {
                  Navigator.of(context).pop();
                  Beamer.of(context).beamToNamed('/');
                },
              ),
              ListTile(
                title: SelectableText('Books'),
                onTap: () {
                  Navigator.of(context).pop();
                  Beamer.of(context).beamToNamed('/books');
                },
              ),
            ],
          ),
        ),
        body: child);
  }
}
