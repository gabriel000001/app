import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // não pode ser modificada; Statefullwidget pode ser modificada
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Text("Texto grandão");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Gabriel's App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content:
                const Text('Ja contou pros seus pais que eres homossexual?'),
            action: SnackBarAction(
              label: 'talvez',
              textColor: Colors.yellow,
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.add),
      ),
      body: const Center(
          child: Text(
        "Texto grandão",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      )),
    );
  }
}
