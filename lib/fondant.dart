import 'package:flutter/material.dart';

class FondantScreen extends StatelessWidget {
  const FondantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recette de Fondant au Chocolat'),
        centerTitle: true,
      ),
      body: Row(
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
                  // Titre
                  const Text(
                    'Fondant au Chocolat',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Description
                  const Text(
                    "Le fondant au chocolat est un dessert délicieux et incontournable, "
                    "caractérisé par sa texture fondante et son goût intense de chocolat. "
                    "C'est un dessert parfait pour les amateurs de chocolat.",
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
                        "200 Votes",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Préparation", "20 min"),
                      _buildInfoColumn(Icons.restaurant, "Cuisson", "15 min"),
                      _buildInfoColumn(Icons.favorite, "Difficulté", "Moyenne"),
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
                  'Assets/Images/fondant_chocolat.jpg',
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
