import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: GoogleFonts.robotoCondensed(
              fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onTap: tapHandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTitle(
            'Filter',
            Icons.filter_list,
            () {
              Navigator.of(context).pushReplacementNamed('/filters');
            },
          )
        ],
      ),
    );
  }
}
