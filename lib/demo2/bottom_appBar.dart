import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomNav extends StatefulWidget{
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>{
  int _index = 0;
  List<Widget> list = List();
  @override
  void initState() {
      list
        ..add(EachView('Home'))
        ..add(EachView('Me'));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_index],
      floatingActionButton: FloatingActionButton(
        tooltip: 'In',
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView('NEW PAGE');
          }));
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon:Icon(Icons.home) ,
              color: Colors.white,
              onPressed: (){ 
                setState(() {
                 _index = 0;
                });
              },
            ),
            IconButton(
              icon:Icon(Icons.airport_shuttle) ,
              color: Colors.white,
              onPressed: (){
                setState(() {
                 _index = 1;
                });
              },
            ),
          ],
        ),
      )
    );
  }
}