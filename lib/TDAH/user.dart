import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:masked_text/masked_text.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  final TextEditingController _cepController = TextEditingController();
  String? _errorMessage;

  // Expressão regular para validar o formato do CEP (xxxxx-xxx)
  final RegExp _cepRegex = RegExp(r'^\d{5}-\d{3}$');
  final RegExp _cepOnlyNumbers = RegExp(r'^\d{8}$');
  var cep;
  var url;

  Future<String>? resposta;
  var erro = false;
  bool enableReiniciar = true;

  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
      textTheme: GoogleFonts
          .kaushanScriptTextTheme(), // Aplica Kaushan Script a todo o textTheme
    );
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.7],
              colors: [Colors.cyanAccent, Colors.blueAccent],
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Text(
            'InfoTDAH',
            style: GoogleFonts.kaushanScript(
              fontSize: 40,
              color: Colors
                  .white, // Define a cor como branca (não será exibida por causa do gradiente).
            ),
          ),
        ),
        centerTitle: true, // Centraliza o título
        backgroundColor: Colors.white, // Define o fundo branco
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 250),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 50),
                    child: MaskedTextField(
                      mask: "#####-###",
                      controller: _cepController,
                      decoration: InputDecoration(
                        labelText: 'CEP:',

                        hintStyle: TextStyle(color: Colors.blue),
                        errorText:
                            _errorMessage, // Exibe a mensagem de erro, se houver
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_cepController.text.isEmpty) {
                          _errorMessage = 'Por favor, insira um CEP.';
                          resposta = null;
                        } else if (!_cepRegex.hasMatch(_cepController.text)) {
                          _errorMessage =
                              'O CEP deve ter exatamente 8 números.';
                          resposta = null;
                        } else {
                          _errorMessage = null; // CEP válido
                          cep = _cepController.text.replaceAll('-', '');
                          url = 'https://brasilapi.com.br/api/cep/v1/$cep';
                          resposta = consultaCep();
                        }
                      });
                    },
                    child: Text('Validar CEP'),
                  ),
                  resposta == null
                      ? const Text(
                          "Vazio",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                        )
                      : FutureBuilder(
                          future: resposta,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(snapshot.data!);
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }
                            return const CircularProgressIndicator();
                          }),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.attach_email),
        onPressed: () {
          setState(() {
            resposta = consultaCep();
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.7],
            colors: [Colors.cyanAccent, Colors.blueAccent],
          ),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          color: Colors
              .transparent, // Torne o fundo transparente para mostrar o gradiente.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.import_contacts,
                  color: Colors.white,
                  size: 45.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.other_houses,
                  color: Colors.white,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 45.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> consultaCep() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return jsonDecode(response.body).toString();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Falha ao carregar o CEP');
    }
  }
}
