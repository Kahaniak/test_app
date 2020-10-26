import 'package:flutter/material.dart';
import 'package:test_app/view/home_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software Test App',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
