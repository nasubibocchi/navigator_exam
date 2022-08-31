import 'package:flutter/material.dart';

class HomeSubSubPage extends StatelessWidget {
  const HomeSubSubPage({Key? key, required this.icon}) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home sub sub page')),
      body: Center(child: icon),
    );
  }
}
