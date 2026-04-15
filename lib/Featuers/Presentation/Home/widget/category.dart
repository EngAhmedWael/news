import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewNews.dart';

import 'package:news/Featuers/Presentation/Home/widget/listviewcategory.dart';
import 'package:news/Featuers/Presentation/Home/widget/titleMain.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Titlemain(title: 'Category', size: 0.66),
        ListViewCategory(),
        SizedBox(height: 15),

        Titlemain(title: 'News Today', size: 0.58),
        ListViewNews(),
      ],
    );
  }
}
