import 'package:flutter/material.dart';
import 'package:test_app/my_app.dart';

/// Let's separate the main function from the MyApp, it will not simplify
/// development on this stage, but it can help us drastically if the application
/// will have more complex structure in the future.
void main() {
  runApp(MyApp());
}


