import 'package:flutter/material.dart';
import 'custome_router2.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('first page',style: TextStyle(fontSize: 36.0),)),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        elevation: 0.0,
        title:Text('Second page',style:TextStyle(fontSize: 36.0)),
      ),
      backgroundColor: Colors.pink,
      body: Center(child: MaterialButton(
        child: Icon(Icons.navigate_before,color: Colors.white,size: 64.0,),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),),
    );
  }
}