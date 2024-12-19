import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final username;
  const AccountPage({super.key, this.username});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 153, 224),
        title: const Text(
          'Hey! Melbin',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
