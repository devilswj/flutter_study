import 'package:flutter/material.dart';
import 'demo9/expansion_panel_list.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'flutter bottomNavigation',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: ExpansionPanelListDemo()
    );
  }
}