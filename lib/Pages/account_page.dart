import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text("Account",style: TextStyle(
          color: Colors.grey[600],
        ),),
      ),
      body: Center(
          child: Text('Account Page Content')
      ),
    );
  }
}
