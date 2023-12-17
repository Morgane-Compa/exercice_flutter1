import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/menu.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menu appBar
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
  
      // Body
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.zero,
            child: const VideoHero(),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("I. Nos Régions",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))),
          ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: const Text(
                    "I love cheese, especially gouda croque monsieur cheese strings hard cheese roquefort. Fondue red leicester cream cheese macaroni cheese. Cheesy grin roquefort danish fontina cheese slices paneer danish fontina manchego blue castello. Bocconcini swiss bocconcini queso cheeseburger danish fontina croque monsieur cheese on toast. Fondue macaroni cheese rubber cheese port-salut.",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RegionPage(title: "Recherche par Region")),
                    );
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(250, 40)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.blueAccent),
                      SizedBox(width: 5),
                      Text("Rechercher Par Région",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            )),
                          
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                        "Cheese and wine ricotta red leicester. Cut the cheese danish fontina halloumi roquefort taleggio cheese strings cheesecake bocconcini. Manchego paneer smelly cheese caerphilly fromage frais roquefort ricotta fromage. Emmental squirty cheese chalk and cheese mascarpone pepper jack airedale boursin cheesy feet. Edam cheese slices cheese on toast cream cheese blue castello smelly cheese brie camembert de normandie. Brie cheeseburger feta melted cheese feta halloumi queso cheese and biscuits. Smelly cheese queso cheese and biscuits manchego mozzarella.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
