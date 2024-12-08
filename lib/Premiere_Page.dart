import 'package:flutter/material.dart';
import 'Seconde_Page.dart';

class PremierePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Accueil Partie 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Bienvenue sur la Première Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espacement
            ElevatedButton(
              onPressed: () {
                // Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondePage(), // Afficher SecondePage
                  ),
                );
              },
              child: Text('Aller à la page suivante'), 
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PremierePage(),
  ));
}
