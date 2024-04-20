import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndux = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text('Profile Screen')
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndux = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndux),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],

        currentIndex: _selectedIndux,
       selectedItemColor: Colors.blue,
       onTap: _onItemTaped,
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Home'),
      Icon(Icons.home, size: 70,color: Colors.red,)
      ],),
    );
  }
}


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Search'),
      Icon(Icons.search, size: 70,color: Colors.red,)
      ],),
    );
  }
}