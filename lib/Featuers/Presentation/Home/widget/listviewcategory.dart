import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Presentation/Home/model/categorymodel.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewCategorybody.dart';

class ListViewCategory extends StatefulWidget {
  const ListViewCategory({super.key});

  @override
  State<ListViewCategory> createState() => _ListViewCategoryState();
}

class _ListViewCategoryState extends State<ListViewCategory> {
  final List<Categorymodel> category = [
    Categorymodel(name: 'education', image: 'assets/images/all.jpg'),
    Categorymodel(name: 'sports', image: 'assets/images/sports.png'),
    Categorymodel(name: 'health', image: 'assets/images/healty.png'),
    Categorymodel(name: 'technology', image: 'assets/images/techonlogy.jpg'),
    Categorymodel(name: 'science', image: 'assets/images/science.jpg'),
    Categorymodel(name: 'business', image: 'assets/images/bussiness.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: category.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => GoRouter.of(
            context,
          ).push(AppRouter.categoryNews, extra: category[index].name),
          child: ListViewCategorybody(category: category, index: index),
        ),
      ),
    );
  }
}
