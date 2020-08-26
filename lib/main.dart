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

class MyHomePage extends StatelessWidget {
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
    );
  }
}
