import 'package:beamer_test/PageTemplate.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(child: Text('books'));
  }
}
