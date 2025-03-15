// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => Tab_BarState();
}

class Tab_BarState extends State<Tab_Bar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    var tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    var tabController;
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabController;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('tab bar view'),
        ),
        body: Column(
          children: [
            Material(
              color: Colors.white,
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Center(
                        child: Text('mm'),
                      ),
                    ),
                  ),
                  Tab(
                    text: "n",
                  ),
                  Tab(
                    text: 'r',
                  )
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: const [Text('u'), Text('m'), Text('y')]))
          ],
        ),
      ),
    );
  }
}
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tab Bar View'),
//       ),
//       body: Column(
//         children: [
//           // Using material's TabBar explicitly
//           Material(
//             color: Colors.white,
//             child: TabBar(
//               controller: _tabController,
//               tabs: const [
//                 Tab(
//                   child: SizedBox(
//                     height: 50,
//                     width: 100,
//                     child: Center(child: Text('Chat')),
//                   ),
//                 ),
//                 Tab(text: 'Call'),
//                 Tab(text: 'hi'),
//               ],
//             ),
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: const [
//                 Text('Chat Screen'),
//                 Text('Call Screen'),
//                 Text('Notification'),
//                 Text('Notification'),
//                 Text('Call Screen'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
