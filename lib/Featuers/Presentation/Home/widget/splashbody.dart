import 'package:flutter/material.dart';
import 'package:news/Core/utils/widget/logoApp.dart';
import 'package:news/Featuers/Presentation/Home/widget/category.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [logoApp(), Category()],
            ),
          ),
        ),
      ],
    );
  }
}
