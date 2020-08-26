import 'package:flutter/material.dart';
import 'package:flutter_swipeable_pages_with_bottomNavbar/screens/blue_screens.dart';
import 'package:flutter_swipeable_pages_with_bottomNavbar/screens/green_screen.dart';
import 'package:flutter_swipeable_pages_with_bottomNavbar/screens/pink_screen.dart';
import 'package:flutter_swipeable_pages_with_bottomNavbar/screens/red_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// #region MaterialApp() attributes
      title: 'Flutter Swipeable Pages with BottomNavBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
// #endregion
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.blue),
        title: Text('Blue', style: TextStyle(color: Colors.blue))),
    BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.green),
        title: Text('Green', style: TextStyle(color: Colors.green))),
    BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.pink),
        title: Text('Pink', style: TextStyle(color: Colors.pink))),
    BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.red),
        title: Text('Red', style: TextStyle(color: Colors.red))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// #region AppBar()
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Swipeable Pages with BottomNavigationBar',
          style: TextStyle(fontSize: 18),
        ),
      ),
// #endregion
      body: PageView(
        children: [
          BlueScreen(),
          GreenScreen(),
          PinkScreen(),
          RedScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
