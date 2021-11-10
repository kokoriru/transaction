import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(onPressed: () => {
                if (Navigator.canPop(context)) {
                  Navigator.popUntil(context, ModalRoute.withName('/'))
                } else {
                  SystemNavigator.pop()
                }
              }, child: Text('Firstページに戻る'),),
            ],
          ),
        ),
      ),
    );
  }
}
