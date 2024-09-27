import 'package:flutter/material.dart';

class Home_TDAH extends StatelessWidget {
  const Home_TDAH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'InfoTDAH',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true, // Centraliza o título
        backgroundColor: Colors.white, // Define o fundo branco
      ),
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFF0F0F0)),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/cerebro.png'),
                  width: 550,
                ),
                Container(
                  color: Colors.white,
                  width: 550,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Tratamento e manejo",
                          style: TextStyle(
                              color: Colors.lightBlueAccent, fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "03/06/2024",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ),
                    ],
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
