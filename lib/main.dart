import 'package:flutter/material.dart';
import 'package:flutter_application_1/Accueil.dart';
// Partie 2 : Pavlova + lié à Accueil = IV fin de tp

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlova App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AccueilPage(), //page d'accueil
    );
  }
}

class PavlovaScreen extends StatelessWidget {
  const PavlovaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recette de Pavlova'),
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Texte
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre
                  const Text(
                    'Pavlova aux Fraises',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Description
                  const Text(
                    "La Pavlova est un dessert à base de meringue qui doit son nom à la ballerine russe Anna Pavlova. "
                    "Ce dessert se caractérise par une coque croustillante et un intérieur moelleux, garni de fruits frais et de crème fouettée.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 24),
                  // Étoiles et votes
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return const Icon(Icons.star, color: Colors.amber, size: 24);
                        }),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "170 Votes",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Informations en bas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Préparation", "25 min"),
                      _buildInfoColumn(Icons.restaurant, "Cuisson", "10 min"),
                      _buildInfoColumn(Icons.favorite, "Difficulté", "Facile"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Image
          Expanded(
            flex: 3, // Image plus large
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/pavlova.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 32),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }
}
