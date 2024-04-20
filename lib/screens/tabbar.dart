import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.search),
            text: 'Search',
          ),
          Tab(
            icon: Icon(
              Icons.person,
            ),
            text: 'Account',
          )
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          //Add tabviews
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home Page'),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(onPressed: () {}, child: Text('View Gallery'))
            ],
          ),

          Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          )),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.person_2_rounded,
                    size: 75,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}