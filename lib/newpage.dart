import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _Newpage();
}

class _Newpage extends State<Newpage> {
  final myController = TextEditingController();
  var texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 07/06 - Stateful Widget"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            texto = myController.text;
          });
        },
        child: Icon(Icons.rocket),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insira um texto',
            ),
          ),
          Text(
            texto,
            style: TextStyle(fontSize: 36),
          )
        ],
      ),
    );
  }
}
