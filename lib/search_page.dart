import 'package:flutter/material.dart';
import 'package:my_app/animation/scale_route.dart';
import 'package:my_app/animation/size_route.dart';
import 'package:my_app/views/make_basic_note.dart';

import 'animation/slide_right_route.dart';

class NewCardPage extends StatefulWidget {
  @override
  _NewCardPageState createState() => _NewCardPageState();
}

class _NewCardPageState extends State<NewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('MaterialPageRoute'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeBasicNote()));
            },
          ),
          RaisedButton(
            child: Text('Open with Slide Right'),
            onPressed: () {
              Navigator.push(context, SlideRightRoute(page: MakeBasicNote()));
            },
          ),
          RaisedButton(
            child: Text('Open view using pushNamed'),
            onPressed: () {
              Navigator.pushNamed(context, 'MAKE_BASIC_NOTE');
            },
          ),
          RaisedButton(
            child: Text('Scale Route'),
            onPressed: () {
              Navigator.push(context, ScaleRoute(page: MakeBasicNote()));
            },
          ),
          RaisedButton(
            child: Text('Size Route'),
            onPressed: () {
              Navigator.push(context, SizeRoute(page: MakeBasicNote()));
            },
          ),
        ],
      ),
    );
  }
}
