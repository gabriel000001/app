import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Cad extends StatefulWidget {
  const Cad({super.key});

  @override
  State<Cad> createState() => _CadState();
}

class _CadState extends State<Cad> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  var email = "";
  var senha = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.1, 0.7],
                colors: [Colors.cyanAccent, Colors.blueAccent])),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Login',
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 9.0,
                                    color: Colors.black,
                                  ),
                                ],
                              )),
                          SizedBox(width: 65),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 100),
                              Stack(children: <Widget>[
                                const Image(
                                  image: AssetImage('assets/images/US.png'),
                                  width: 200,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 20,
                                  child: Icon(
                                    Icons
                                        .lock, // Ícone de cadeado padrão do Flutter
                                    size: 50,
                                    color: Color(0xFFD9D9D9), // Cor do ícone
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/tdah.png'),
                            width: 200,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Align(alignment: Alignment.bottomCenter),

                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
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
                      hintText: 'Email:',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor insira um email';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Insira um email válido';
                      }
                      return null;
                    },
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
                    controller: myController2,
                    decoration: const InputDecoration(
                      hintText: 'Senha:',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor insira uma senha';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 15),
                // Padding(
                //   padding: const EdgeInsets.only(right: 50, left: 50),
                //   child: TextFormField(
                //     cursorColor: Colors.white,
                //     style: TextStyle(
                //       color: Colors.white,
                //       shadows: <Shadow>[
                //         Shadow(
                //           offset: Offset(1.0, 1.0),
                //           blurRadius: 7.0,
                //           color: Colors.black,
                //         ),
                //       ],
                //     ),
                //     controller: myController3,
                //     decoration: const InputDecoration(
                //       hintText: 'Confirme a senha:',
                //       hintStyle: TextStyle(color: Colors.white),
                //       enabledBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //             width: 1, color: Colors.white), //<-- SEE HERE
                //       ),
                //     ),
                //   ),
                // ),
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

                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home_TDAH()),
                        );
                      } else {
                        print('O formulário é invalido');
                      }
                      // csenha = myController3.text;
                      // if (senha == csenha) {
                      //   print("correto");

                      // } else {
                      //   print("errado");
                      // }
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
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
                  child: const Text('Cadastrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_TDAH()),
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
