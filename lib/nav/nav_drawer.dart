import 'package:flutter/material.dart';

class NavExample extends StatefulWidget {
  const NavExample({super.key});

  @override
  State<NavExample> createState() => _NavExampleState();
}

class _NavExampleState extends State<NavExample> {
  String _content = 'Home Page';

  List<String> _itemList = ['iPhone 15', 'Nothing 2A', 'Pixel 8 Pro'];

  void _updateContent(String newContent) {
    setState(() {
      _content = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Products',
                )),
            ListTile(
              title: Text('Mobiles'),
              onTap: () {
                _updateContent('Mobiles');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Computers'),
              onTap: () {
                 _updateContent('Computers');
                  Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    if (_content == 'Mobiles') {
      return ListView.builder(
        itemCount: _itemList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_itemList[index]),
            onTap: () {},
          );
        },
      );
    } else if (_content == 'Computers') {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.start),
            SizedBox(
              width: 10,
            ),
            Text('Apple'),
            Icon(Icons.favorite),
            SizedBox(
              width: 10,
            ),
            Text('Crome book'),
          ],
        ),
      );
    } else {
      return Center(
        child: Text(_content),
      );
    }
  }
}