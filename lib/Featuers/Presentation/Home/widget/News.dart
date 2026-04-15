import 'package:flutter/material.dart';
import 'package:news/Featuers/Data/Model/Newsmodel.dart';
import 'package:news/Featuers/Presentation/Home/widget/Newsbody.dart';

class News extends StatelessWidget {
  const News({super.key, required this.article});
  final Newsmodel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Newsbody(article: article));
  }
}
