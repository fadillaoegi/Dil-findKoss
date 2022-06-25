import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  int testing = 0;

  void _clickUpdate() {
    setState(() {
      testing++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter testing"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  testing.toString(),
                  style: TextStyle(fontSize: 5 + testing.toDouble()),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 60,
              width: 200,
              child: RaisedButton(
                  onPressed: _clickUpdate,
                  child: Text(
                    "Click",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue),
            )
          ],
        )));
  }
}
