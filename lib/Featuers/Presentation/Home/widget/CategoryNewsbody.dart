import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewNews.dart';
import 'package:news/Featuers/Presentation/Home/widget/RowAppbar.dart';

class CategoryNewsbody extends StatelessWidget {
  const CategoryNewsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22),
            child: Column(children: [RowAppbar(), ListViewNews()]),
          ),
        ),
      ],
    );
  }
}
