import 'package:flutter/material.dart';

class Home_TDAH extends StatelessWidget {
  const Home_TDAH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          color: Colors.cyan,
          margin: const EdgeInsets.all(25.0),
          width: 550,
          child: Center(
            child: Column(
              children: [
                Text("InfoTDAH"),
                Container(
                  margin: const EdgeInsets.all(25.0),
                  color: Colors.grey,
                  width: 300,
                  child: Center(
                    child: Text("oi"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
