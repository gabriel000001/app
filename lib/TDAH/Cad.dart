import 'package:flutter/material.dart';

class Cad extends StatefulWidget {
  const Cad({super.key});

  @override
  State<Cad> createState() => _CadState();
}

class _CadState extends State<Cad> {
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     senha = myController.text;
      //     csenha = myController2.text;
      //     if (senha == csenha) {
      //       print("correto");
      //     } else {
      //       print("errado");
      //     }
      //   },
      //   child: Text('Enviar'),
      // ),
      body: Expanded(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/images/US.png'),
              ),
              SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira o seu nome',
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira o seu email',
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: myController,
                decoration: const InputDecoration(
                  hintText: 'Insira o sua senha',
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: myController2,
                decoration: const InputDecoration(
                  hintText: 'Confirme sua senha',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    senha = myController.text;
                    csenha = myController2.text;
                    if (senha == csenha) {
                      print("correto");
                    } else {
                      print("errado");
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
              // ElevatedButton(
              //   style: const ButtonStyle(
              //       backgroundColor:
              //           MaterialStatePropertyAll<Color>(Colors.black38)),
              //   child: const Text('Pagina Secundária',
              //       style: TextStyle(color: Colors.white)),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => Pagina_Secundaria()),
              //     );
              //   },
              // ),
            ],
          ),
        ),
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
