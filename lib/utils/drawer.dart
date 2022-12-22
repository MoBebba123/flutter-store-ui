import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer_nav extends StatefulWidget {
  const Drawer_nav({Key? key}) : super(key: key);

  @override
  _Drawer_navState createState() => _Drawer_navState();
}

class _Drawer_navState extends State<Drawer_nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Demo'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
