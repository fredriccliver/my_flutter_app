import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MakeBasicNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF333333),
      appBar: AppBar(
        title: Text("BASIC NOTE"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CupertinoButton(
            child: Text('GO BACK'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
