import 'package:flutter/material.dart';

import '../pagina_secundaria.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        title: const Text("Gabriel's App"),
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
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.7],
                    colors: [Colors.cyanAccent, Colors.blueAccent])),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 9.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 250),
                    Image(
                      image: AssetImage('assets/images/tdah.png'),
                      width: 200,
                    ),
                  ],
                ),
                Align(alignment: Alignment.bottomCenter),
                Stack(children: <Widget>[
                  const Image(
                    image: AssetImage('assets/images/US.png'),
                    width: 150,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.transparent, // Remove a cor de fundo
                        shadowColor: Colors.transparent, // Remove a sombra
                        minimumSize:
                            Size(0, 0), // Define o tamanho mínimo como zero
                        padding: EdgeInsets.all(0), // Remove o padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0), // Remove o arredondamento (opcional)
                        ),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/camera.png'),
                        width: 50,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ]),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 7.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Email:',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 7.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    controller: myController,
                    decoration: const InputDecoration(
                      hintText: 'Senha:',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Remove a cor de fundo
                      shadowColor: Colors.transparent, // Remove a sombra
                      minimumSize:
                          Size(0, 0), // Define o tamanho mínimo como zero
                      padding: EdgeInsets.all(0), // Remove o padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            0), // Remove o arredondamento (opcional)
                      ),
                    ),
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
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 9.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black38)),
                  child: const Text('Pagina Secundária',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Pagina_Secundaria()),
                    );
                  },
                ),
              ],
            ),
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
