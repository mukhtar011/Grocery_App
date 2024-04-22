import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text("Favorite",style: TextStyle(
          color: Colors.grey[600]
        ),),
      ),
      body: Center(
          child: Text("Favorite Page Content")
      ),
    );
  }
}
