import 'package:flutter/material.dart';
import '../widgets/textbox.dart';

// Start this as stateless
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  String fortune = "woof";

  void foo() {
    print(fortune);
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextBox(text: fortune,),
                    OutlinedButton(
                      onPressed: () {
                        foo();
                      },
                      child: const Text("Click me")
                    )
                  ],
                ),
              ],
            ),
          )
          ),
        )
      );
  }
}
