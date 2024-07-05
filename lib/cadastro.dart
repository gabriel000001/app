import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  var senha = "";
  var csenha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ola'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          senha = myController.text;
          csenha = myController2.text;
          if (senha == csenha) {
            print("correto");
          } else {
            print("errado");
          }
        },
        child: Text('Enviar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insira',
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: myController2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insira',
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Cadastro extends StatelessWidget {
//   const Cadastro({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         title: Text('Cadastro'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Insira um texto',
//             ),
//           ),
//           Text(
//             'OLA',
//             style: TextStyle(fontSize: 36),
//           )
//         ],
//       ),
//     );
//     const Text("Texto grandão");
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         title: const Text("Gabriel's App"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content:
//                 const Text('Ja contou pros seus pais que eres homossexual?'),
//             action: SnackBarAction(
//               label: 'talvez',
//               textColor: Colors.yellow,
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Icon(Icons.add),
//       ),
//       body: const Center(
//           child: Text(
//         "Texto grandão",
//         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
//       )),
//     );
//   }
// }
