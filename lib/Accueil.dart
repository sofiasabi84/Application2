import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'crepe.dart';
import 'fondant.dart';
import 'main.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recettes de Pâtisserie'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bannière
            Stack(
              children: [
                Image.asset(
                  'Assets/Images/patisserie_banner.jpg', 
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.black.withOpacity(0.5),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'Bienvenue sur l\'App de Recettes !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Liste des recettes sous forme de cartes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildRecipeCard(
                    context,
                    'Crêpes',
                    'Des crêpes moelleuses et faciles à préparer.',
                    'Assets/Images/crepe.jpg',
                    const CrepesScreen(),
                  ),
                  const SizedBox(height: 16),
                  _buildRecipeCard(
                    context,
                    'Fondant au Chocolat',
                    'Un dessert fondant et chocolaté irrésistible.',
                    'Assets/Images/fondant_chocolat.jpg',
                    const FondantScreen(),
                  ),
                  const SizedBox(height: 16),
                  _buildRecipeCard(
                    context,
                    'Pavlova',
                    'Un dessert élégant à base de meringue et de fruits.',
                    'Assets/Images/pavlova.jpg',
                    const PavlovaScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeCard(
      BuildContext context, String title, String subtitle, String imagePath, Widget targetPage) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        },
        child: Row(
          children: [
            // Image de recette
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
              child: Image.asset(
                imagePath,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Texte
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
