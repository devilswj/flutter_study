import 'package:flutter/material.dart';
import 'myhome_page.dart';

class KeepStatus extends StatefulWidget{
  _KeepStatusState createState()=> _KeepStatusState();
}

class _KeepStatusState extends State<KeepStatus> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Keep Alive Demo'),), 
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),)
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}