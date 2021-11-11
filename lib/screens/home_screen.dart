import 'package:flutter/material.dart';

// Start this as stateless
class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Corgi Oracle",
      home: Scaffold(
        appBar: AppBar(title: const Text("Corgi Oracle")),
        body: SafeArea(
          child: Column(
            children: const <Widget> [
              Text('yeet'),
              Text('yote')
            ],
        )
      ),
      )
    );
  }
}