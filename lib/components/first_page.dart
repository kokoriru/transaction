import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(onPressed: () => {
                Navigator.pushNamed(context, '/next')
              }, child: Text('Nextページへ(戻れるボタン)'),),
              ElevatedButton(onPressed: () => {
                Navigator.pushReplacementNamed(context, '/next')
              }, child: Text('Nextページへ(戻れないボタン)'),),
            ],
          ),
        ),
      ),
    );
  }
}
