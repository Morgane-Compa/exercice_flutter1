import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/menu.dart';
import 'package:flutter_examen1/components/video_hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const AppDrawer(),
  
      body: ListView( // agencement des sections du body en colonne
        children: const <Widget>[ // sections du body
          VideoHero(), // component affichant un Hero avec un background Video

        ],
      ),
    );
  }
}
