import 'package:flutter/material.dart';
import 'category1.dart';
import 'main.dart';
class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(
        title: Text("Hello world"),
        //centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.white],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab( text: 'Bag'),
            Tab( text: 'trousers'),
            Tab( text: 'sweater'),
            Tab( text: 'shirt'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          buildPage('Feed Page'),
          buildPage('Feed Page'),
          buildPage('Profile Page'),
          buildPage('Settings Page'),
        ],
      ),
    ),
  );

  Widget buildPage(String text) =>Center(

      child:GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(30),
          children: <Widget>[

            Category1(),
            Category1(),
            Category1(),

          IconButton(
              padding:  EdgeInsets.all(0.0),
              icon: Icon(Icons.add),
              color: Colors.grey,
              highlightColor: Colors.red,
              hoverColor: Colors.green,
              focusColor: Colors.purple,
              splashColor: Colors.yellow,
              disabledColor: Colors.amber,
              iconSize: 48,
              onPressed: onPressed
            ),
          ]
      )

  );
}