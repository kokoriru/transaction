import 'package:flutter/material.dart';
import 'package:transition/components/next_page.dart';
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
              RaisedButton(onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>NextPage(),)
                )
              }, child: Text('Nextページへ'),)
            ],
          ),
        ),
      ),
    );
  }
}
