import 'package:flutter/material.dart';

abstract class ColorEvent {}

class ChangeColor extends ColorEvent{}

class ChangeColorToDefault extends ColorEvent{}