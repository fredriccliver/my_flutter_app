import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/root_page.dart';
import 'package:my_app/views/make_basic_note.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case 'MAKE_BASIC_NOTE':
            return CupertinoPageRoute(
                builder: (_) => MakeBasicNote(), settings: settings);
          // case 'deeper':
          //   return CupertinoPageRoute(
          //       builder: (_) => DeeperPage(), settings: settings);
        }
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.black
      ),
      home: RootPage(),
    );
  }
}