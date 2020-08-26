import 'package:flutter/material.dart';

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
      body: Center(child: Text('Empty Body')),
    );
  }
}
