import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: null,
        child: Icon(Icons.create),
      ),
    );
  }
}

Widget _buildBody() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
    ),
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return _buildListItem(context, index);
    },
  );
}

Widget _buildListItem(BuildContext context, int index) {
  return Image.network(
    'https://amazingthaisea.com/wp-content/uploads/2015/07/21.jpg',
    fit: BoxFit.cover,
  );
}
