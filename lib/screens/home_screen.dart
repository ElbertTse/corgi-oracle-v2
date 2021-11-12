import 'package:flutter/material.dart';
import '../widgets/textbox.dart';
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
    fortune = "Click the button and I'll give you some knowledge";
  }

  void update() async {
    String res = await getFortune();
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
                const SizedBox(height: 20),
                const Image(image: AssetImage('images/corgi.png'),
                      height: 250
                    ),
                const SizedBox(height: 10),
                // This is a little trick to force the OutlinedButton to the bottom of the screen.
                // Expanded will take up all of the space between the image and the button.
                Expanded(child: TextBox(text: fortune)),
                OutlinedButton(
                  onPressed: () {
                    update();
                  },
                  child: const Text("Click for wisdom")
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
          ),
        )
      );
  }
}
