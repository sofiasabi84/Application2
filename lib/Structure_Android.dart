import 'package:flutter/material.dart';
//partie 1 TP

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Partie 1 Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Partie 1 Flutter'),
      ),
      body: Stack(
        children: [
          _selectedIndex == 0
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image
                      Image.asset(
                        'assets/images/pavlova.jpg',
                        width: 150,
                        height: 150,
                      ),
                     const SizedBox(height: 20), // Espacement
                      // Image Web
                      Image.network(
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgh1-aAABHfvzS8SHyTlJreWCoKC1SEHvTbJ6ataVz0Je5Pasgyld7x5ZgOtv2nEY1UvTND2L59_Yk2KW4KcNT5XW03-LmAgpXqYO1mH9VeoxVYUuTzYcQhyxpAVIyX4NbsyVev2A2X5_9b/s1600/Ash.jpg', // Lien vers une image web
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                )
              : _selectedIndex == 1
                  ? const Center(
                      child: Text(
                        'Statistiques',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  : const Center(
                      child: Text(
                        'Paramètres',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
          Positioned(
            bottom: 100,
            left: MediaQuery.of(context).size.width / 2 - 28, 
            child: FloatingActionButton(
              onPressed: () {
                
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    content: Text('FloatingActionButton pressé !'),
                  ),
                );
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: 'Statistiques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Paramètres',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0; 
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.query_stats),
              title: Text('Statistiques'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1; 
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Paramètres'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2; 
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
