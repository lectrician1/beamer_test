import 'package:beamer_test/PageTemplate.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(child: Text('hi'));
  }
}
