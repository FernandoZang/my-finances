import 'package:flutter/material.dart';
import 'package:my_finances/entradas.dart';
import 'package:my_finances/tela_saidas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhas Finanças',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Minhas Finanças'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _onItemTapped(int index){
    _selectedIndex = index;
    switch(index) {
      case 1: Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaEntradas('Entradas')));
      case 2: Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaSaidas('Saídas')));
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Text('Gerencia suas finanças'),
            ) 
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: 
          const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(IconData(0x0024,fontFamily: 'MaterialIcons')), label: 'Entradas'),
            BottomNavigationBarItem(icon: Icon(IconData(0x0024,fontFamily: 'MaterialIcons')), label: 'Saidas')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 73, 3, 67),
          onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 94, 22, 90)),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {Navigator.pop(context);}
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () { Navigator.pop(context); }
            )
          ]
        ),
      )
    );
  }
}