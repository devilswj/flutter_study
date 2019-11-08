import 'package:flutter/material.dart';
import 'pages_page.dart';
import 'airplay_page.dart';
import 'home_page.dart';
import 'email_page.dart';

class BottomNavigation extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigation>{
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState(){
    // list
    //   ..add(HomePage())
    //   ..add(EmailPage())
    //   ..add(PagesPage())
    //   ..add(AirplayPage());
    list.addAll([HomePage(),EmailPage(),PagesPage(),AirplayPage()]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
           _currentIndex = index; 
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color:_BottomNavigationColor
            ),
            title:Text('Home',style: TextStyle(color: _BottomNavigationColor),)
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.email,
              color:_BottomNavigationColor
            ),
            title:Text('Email',style: TextStyle(color: _BottomNavigationColor),)
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.pages,
              color:_BottomNavigationColor
            ),
            title:Text('Pages',style: TextStyle(color: _BottomNavigationColor),)
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.airplay,
              color:_BottomNavigationColor
            ),
            title:Text('AipPlay',style: TextStyle(color: _BottomNavigationColor),)
          )
        ]
      ),
    );
  }
}