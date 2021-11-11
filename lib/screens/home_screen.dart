import 'package:flutter/material.dart';
import '../api/fortune.dart';

// Start this as stateless
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String fortune;

  @override
  void initState() {
    super.initState();
    fortune = "woof";
  }

  void update() async {
    String res = await getFortune();
    print(res);
    setState(() {
      fortune = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Corgi Oracle",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Corgi Oracle"),
            titleTextStyle: const TextStyle(
              fontFamily: "Roboto",
              fontSize: 24,
            ),
          ),
          body: SafeArea(
              child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 20),
                const Image(image: AssetImage('images/fortunecorgi.jpg'),
                      height: 250
                    ),
                SizedBox(height: 20),
                // This is a little trick to force the OutlinedButton to the bottom of the screen.
                // Expanded will take up all of the space between the image and the button.
                Expanded(child: Text(fortune)),
                OutlinedButton(
                  onPressed: () {
                    update();
                  },
                  child: const Text("Click me")
                ),
                SizedBox(height: 20),
              ],
            ),
          )
          ),
        )
      );
  }
}
