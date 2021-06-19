import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class Category1 extends StatefulWidget {
  @override
  _Category1State createState() => _Category1State();
}
class _Category1State extends State<Category1> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
               child: Container(
                    child:Column(
                children: [
                 Row(
                children: [
                Expanded(
                child: Container(
            margin:EdgeInsets.all(10) ,
            height: 180,
            width: 280,
            child:Column(
              children:
              <Widget>[
                Image.network("https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true"),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),

              ],


            )
        )
      ),
      Expanded(
          child: Container(
          margin:EdgeInsets.all(10) ,
          height: 180,
          width: 180,
          child:Column(
            children:
            <Widget>[
              Image.network("https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_2.png?raw=true"),

            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),

            ],
          )
      ))
      ],
    ),
     Row(

       children: [

        Expanded(child: Column(

            children: [
              SizedBox(height: 8),
              Text("Name"),
              SizedBox(height: 8),
              Text("Price",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ]

        ),
        ),
         Expanded(child: Column(
            children: [
            Text("Name"),
            SizedBox(height: 8),
            Text("Price",
              style: const TextStyle(fontWeight: FontWeight.bold),),
            ]

         ),
         ),
       ],
     ),

              ],


            ),


                    height: 260,
                    width:  MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),

                ),


        ),
      ),
    );


  }

}