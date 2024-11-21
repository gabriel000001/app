import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_TDAH extends StatelessWidget {
  const Home_TDAH({super.key});

  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
      textTheme: GoogleFonts
          .kaushanScriptTextTheme(), // Aplica Kaushan Script a todo o textTheme
    );
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
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFFF0F0F0)),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/cerebro.png'),
                  ),
                  Container(
                    color: Colors.white10,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Bem vindos ao aplicativo",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent, fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "03/06/2024",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                                // GoogleFonts.kaushanScript()),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/cerebro.png'),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 10),
                                      child: Text(
                                        "Tá certo bebe",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        "03/06/2024",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          // GoogleFonts.kaushanScript()),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/cerebro.png'),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 10),
                                      child: Text(
                                        "Tá certo bebe",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        "03/06/2024",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          // GoogleFonts.kaushanScript()),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/cerebro.png'),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 10),
                                      child: Text(
                                        "Tá certo bebe",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        "03/06/2024",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          // GoogleFonts.kaushanScript()),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/cerebro.png'),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 10),
                                      child: Text(
                                        "Tá certo bebe",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        "03/06/2024",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          // GoogleFonts.kaushanScript()),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
