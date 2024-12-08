import 'package:flutter/material.dart';

class SecondePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Suivante'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Bienvenue sur la Seconde Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
               
                Navigator.pop(context);
              },
              child: Text('Retour à la page précédente'),
            ),
          ],
        ),
      ),
    );
  }
}
