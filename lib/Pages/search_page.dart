import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String query;

  const SearchPage({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text('Search Results for "$query"',style: TextStyle(
          color: Colors.grey[600],
        ),),
      ),
      body: Center(
        child: Text('Search Page Content'),
      ),
    );
  }
}