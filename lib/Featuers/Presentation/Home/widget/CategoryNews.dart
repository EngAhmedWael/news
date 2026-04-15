import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/widget/CategoryNewsbody.dart';

class Categorynews extends StatelessWidget {
  const Categorynews({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CategoryNewsbody(category: category));
  }
}
