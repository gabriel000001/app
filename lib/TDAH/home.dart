import 'package:flutter/material.dart';

class Home_TDAH extends StatelessWidget {
  const Home_TDAH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Center(
          child: Text('InfoTDAH'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Image.asset(
                'https://fernandobeteti.com.br/wp-content/uploads/2024/05/portrait-autistic-kid-fantasy-world-scaled.jpg'),
          ),
        ],
      ),
    );
  }
}
