import 'package:flutter/material.dart';

class Pagina_Secundaria extends StatelessWidget {
  const Pagina_Secundaria({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Pagina Secundaria",
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.black38)),
                child: const Text('Pagina Principal',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),

          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: Text('Deliver features faster', textAlign: TextAlign.center),
          //     ),
          //     Expanded(
          //       child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
