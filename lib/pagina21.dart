import 'package:flutter/material.dart';

class Pagina21 extends StatelessWidget {
  const Pagina21({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    var EstiloTexto =
        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("SCP Documents 21"),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Text(
            "Texto da linha 1",
            style: EstiloTexto,
          ),
          Text("linha 2"),

          Text(
            "Texto da linha 3",
            style: EstiloTexto,
          ),
          Text("linha 4"),

          Text(
            "Texto da linha 5",
            style: EstiloTexto,
          ),

          SizedBox(height: 15),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              SizedBox(width: 32),
              Text("linha x",
                style: EstiloTexto,
              ),

              Text("linha x"),

              Icon(Icons.rocket_launch_sharp),

              Text("linha x"),

              Text("linha x",
                style: EstiloTexto,
              ),

              SizedBox(width: 32),

            ],
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              SizedBox(width: 32),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),

              // ElevatedButton.icon(onPressed: (){}, label: Icon(Icons.radio), icon: Text('radio')
              // ),
              ElevatedButton.icon(onPressed: (){}, label: Icon(Icons.radio), icon: Text('radio')
              ),

              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),

              SizedBox(width: 32),

            ],
          ),

          Expanded(
            child: Center(

              child: Text("Texto no meio",
              style: EstiloTexto,
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
