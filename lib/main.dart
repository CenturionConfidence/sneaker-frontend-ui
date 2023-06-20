import 'package:ecommerce_design/src/models/item.dart';
import 'package:ecommerce_design/src/screens/home.dart';
import 'package:ecommerce_design/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final theme = AppTheme.light();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Item> dummyCategories = [
    Item(
      id: 'c1',
      title: 'Fall Limited Sneaker Edition',
      description: 'These low sneakers are your perfect wear companion',
      price: 125.00,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: HomePage(dummyCategories),
    );
  }
}
