import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.close), onPressed: null),
              IconButton(icon: Icon(Icons.person), onPressed: null),
            ],
          ),
          Text('My Cart'),
        ],
      ),
    );
  }
}
