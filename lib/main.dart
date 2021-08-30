import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("InterView Demo Code"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50.0,),
              Text(
                "Counter : $_counter",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
    SizedBox(height: 50.0,),
            MaterialButton(
              color: Colors.yellow,
              child: Text(
                "+"
              ),
              onPressed: ()
              {
                setState(() {
                  _counter++;
                });

                print(_counter);
              },
            ),
            SizedBox(height: 20.0,
            ),
            MaterialButton(
              color: Colors.yellow,
              child: Text(
                  "-"
              ),
              onPressed: ()
              {
                setState(() {
                  _counter--;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: Colors.yellow,
              child: Text(
                  "Reset"
              ),
              onPressed: ()
              {
                setState(() {
                  _counter= 0;
                  print(_counter);
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
