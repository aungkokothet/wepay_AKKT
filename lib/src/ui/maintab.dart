import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wepay/src/ui/pages/exchange.dart';
import 'package:wepay/src/ui/pages/home.dart';
import 'package:wepay/src/ui/pages/profile.dart';

List<Widget> pages = <Widget>[
  HomePage(),
  ExchangePage(),
  ProfilePage(),
];

class MainTab extends StatefulWidget {
  static const routeName = '/maintab';
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int _currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return pages[index];
        },
        onPageChanged: (value) {
          setState(
            () {
              _currentIndex = value;
              print('index num is: $_currentIndex');
            },
          );
        },
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Theme.of(context).accentColor,
        strokeColor: Color(0x300c18fb),
        unSelectedColor: Colors.grey[600],
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(icon: Icons.home),
          CustomNavigationBarItem(icon: Icons.data_usage),
          CustomNavigationBarItem(icon: Icons.person_outline),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            pageController.jumpToPage(_currentIndex);
          });
        },
      ),
    );
  }
}

// class MainTab extends StatefulWidget {
//   MainTab() : super();
//   static const routeName = '/maintab';

//   final String title = "Bottom Navigation Demo";

//   @override
//   MainTabState createState() => MainTabState();
// }

// class MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
//   //

//   TabController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Bottom Navigation Demo"),
//       ),
//       body: TabBarView(
//         children: <Widget>[
//           HomePage(),
//           ExchangePage(),
//           ProfilePage(),
//         ],
//         controller: controller,
//       ),
//       bottomNavigationBar: Material(
//         color: Colors.blue,
//         child: TabBar(
//           tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.favorite),
//             ),
//             Tab(
//               icon: Icon(Icons.add),
//             ),
//             Tab(
//               icon: Icon(Icons.airport_shuttle),
//             ),
//           ],
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }
