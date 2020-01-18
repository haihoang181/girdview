import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget {
  //Ham khoi tao
  final String title;
  MainPage(this.title):super();

  @override
  _State createState() =>  new _State();
// State<StatefulWidget> createState() => throw new _State();

  
}

class _State extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        children: _buildGirdTitle(16),

      ),

    );
  }

  List<Widget> _buildGirdTitle(numberOfTitle){
    List<Container> containers = new List<Container>.generate(numberOfTitle, (int index){
      final imageName = 'images/${index+1}.jpg';
      return new Container(
        child: new Image.asset(imageName),

      );
    });
  return containers;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "GirdView",
      home: new MainPage("GirdView of Images"),

    debugShowCheckedModeBanner: false,
    );
  }
}