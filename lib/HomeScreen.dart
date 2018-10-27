import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//El guion abjo significa que es método privado
class _HomeScreenState extends State<HomeScreen> {
  Color _myColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Cambia el color del texto",
              style: TextStyle(color: _myColor, fontSize: 15.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Azul"),
                  onPressed: () => _changeColor(Colors.blue),
                ),
                RaisedButton(
                  child: Text("Verde"),
                  onPressed: () => _changeColor(Colors.green),
                ),
                RaisedButton(
                  child: Text("Rojo"),
                  onPressed: () => _changeColor(Colors.red),
                )
              ],
            ),
          ],
        ));
  }

  void _changeColor(Color color) {
    setState(() {
      _myColor = color;
    });
  }
}
