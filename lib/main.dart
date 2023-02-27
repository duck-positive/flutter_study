import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Container(
          height: 150,
          margin: EdgeInsets.all(20),
          color: Colors.blue,
          child: Row(
            children: [
              Flexible(flex: 3, child: Icon(Icons.access_alarm, size: 150,)),
              Flexible(flex: 7, child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("title"),
                    Text("content"),
                    Text("price"),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text("3")
                      ],
                    ),
                    )
                  ],
                ),
              ))
            ],
          )
        ),
      ),
    );
  }
}