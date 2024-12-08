import 'package:flutter/material.dart';
import 'accueil.dart'; // Import de la page d'accueil

class CrepesScreen extends StatelessWidget {
  const CrepesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recette de Crêpes'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Partie Texte
                Expanded(
                  flex: 2, // Texte plus large
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Crêpes',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Les crêpes sont un plat français populaire, facile à préparer et très apprécié pour le petit-déjeuner ou le dessert. "
                          "Elles peuvent être garnies de sucre, de chocolat, de fruits ou d'autres ingrédients au choix.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Row(
                              children: List.generate(5, (index) {
                                return const Icon(Icons.star, color: Colors.amber, size: 24);
                              }),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "230 Votes",
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildInfoColumn(Icons.timer, "Préparation", "15 min"),
                            _buildInfoColumn(Icons.restaurant, "Cuisson", "5 min"),
                            _buildInfoColumn(Icons.favorite, "Difficulté", "Facile"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Image
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'Assets/Images/crepe.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bouton pour retourner à l'accueil
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Retourne à la page précédente
              },
              child: const Text('Retour à l\'accueil'),
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
