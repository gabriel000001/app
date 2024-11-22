import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/TDAH/user.dart';

class Home_TDAH extends StatefulWidget {
  const Home_TDAH({super.key});

  @override
  State<Home_TDAH> createState() => _Home_TDAHState();
}

class _Home_TDAHState extends State<Home_TDAH> {
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
                            padding: EdgeInsets.fromLTRB(15.0, 0, 0, 10.0),
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
                                      image: NetworkImage(
                                          "https://www.tupi.fm/wp-content/uploads/2024/11/Tupi-Thumb-do-Site-34-1.jpg"),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 10),
                                        child: Text(
                                          "Professor chora após aluno com TDAH e dislexia conquistar prata em Olimpíada de matemática",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.lightBlueAccent,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          "22/11/2024",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            // GoogleFonts.kaushanScript()),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
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
                                      image: NetworkImage(
                                          "https://s2-oglobo.glbimg.com/oh0ieY_iy3u7iIvj97H12IsEsX4=/0x0:3700x2487/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2023/D/B/6Ar4U8TRisrWWKRY0IEw/menino-joga-pinball-no-sofa.jpg"),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 10),
                                        child: Text(
                                          "TDAH: estudo liga transtorno a maior chance de desenvolver obesidade infantil; entenda",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.lightBlueAccent,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          "11/11/2024",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            // GoogleFonts.kaushanScript()),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
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
                                      image: NetworkImage(
                                          "https://www.curitiba.pr.leg.br/informacao/noticias/com-aval-da-ccj-camara-de-curitiba-pode-rever-semana-do-tdah/image_large"),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 10),
                                        child: Text(
                                          "Com aval da CCJ, Câmara de Curitiba pode rever Semana do TDAH",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.lightBlueAccent,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          "16/11/2024",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            // GoogleFonts.kaushanScript()),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
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
                                      image: NetworkImage(
                                          "https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/a363/live/fd1affb0-858e-11ef-addc-5556603eb4c1.jpg.webp"),
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 10),
                                        child: Text(
                                          "Vale a pena ir atrás de diagnóstico de TDAH depois de adulto?",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.lightBlueAccent,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          "10/10/2024",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            // GoogleFonts.kaushanScript()),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
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
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
