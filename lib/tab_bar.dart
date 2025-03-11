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
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar View'),
      ),
      body: Column(
        children: [
          // Using material's TabBar explicitly
          Material(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Center(child: Text('Chat')),
                  ),
                ),
                Tab(text: 'Call'),
                Tab(text: 'hi'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text('Chat Screen'),
                Text('Call Screen'),
                Text('Notification'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
