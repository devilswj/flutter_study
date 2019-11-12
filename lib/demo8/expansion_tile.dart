import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion tile demo'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('expansion tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subTitle'),
            ),
            ListTile(
              title: Text('list tile1'),
              subtitle: Text('subTitle1'),
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}