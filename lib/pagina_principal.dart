import 'package:flutter/material.dart';
import 'package:untitled/pagina_secundaria.dart';

class Pagina_Principal extends StatelessWidget {
  const Pagina_Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    var EstiloTexto =
        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Pagina Principal",
            textAlign: TextAlign.left,
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.accessibility_new),
                ),
                accountName: Text(
                  "Gabriel Vieira Caires de Almeida",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "gabriel.8947@aluno.pr.senac.br",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://super.abril.com.br/wp-content/uploads/2019/09/bh_accretiondisk_sim_stationary_websize.gif?w=720&h=440&crop=1"),
                      fit: BoxFit.fill),
                ),
              ),
              ListTile(
                leading: Icon(Icons.accessibility_new_outlined),
                title: Text("Sukuna"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text("Gojo"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.accessibility_new),
                title: Text("Itadori"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
            ],
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
