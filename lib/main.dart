import 'package:flutter/material.dart';
import 'files.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Files> quotes = [
    Files (text: 'jump bad man jump ', author: 'donbay'),
    Files (text: 'hide your woman as i am coming soon', author: 'Donbay'),
    Files (text: 'no where to run and no where to hide',author: 'john'),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold (
      primary: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text ('WELCOME TO ANP SUPPORT'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        primary: true,
      ),
      body: Column (
          children: quotes.map((messages) => FileCard(
            message: messages,
            delete: () {
              setState(() {
                quotes.remove(messages);
              });
            },
          )).toList()

        ),



    );
  }
}

class FileCard extends StatelessWidget {

  final Files message;
  final Function delete;
  FileCard ({this.message, this.delete });
  


  @override
  Widget build(BuildContext context) {
    return Card (
      margin: EdgeInsets.all(5.0),
      child: Padding (
        padding: EdgeInsets.all(3),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text (
              message.text,
              style: TextStyle (
                fontFamily: 'Indie',
                fontSize: 25.0,
              ),
            ),
            SizedBox (height: 5.0,),
            Text (
              message.author,
              style: TextStyle (
                fontFamily: 'Indie',
                fontSize: 25.0,
              ),
            ),
            SizedBox (height: 5.0,),
            FlatButton.icon(onPressed: delete , icon: Icon(Icons.delete), label: Text ('Delete file'))
          ],
        ),
      ),
    );
  }
}



