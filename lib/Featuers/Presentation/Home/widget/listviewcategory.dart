import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Presentation/Home/model/categorymodel.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewCategorybody.dart';
import 'package:news/Featuers/Presentation/Home/widget/getcategorylist.dart';

class ListViewCategory extends StatefulWidget {
  const ListViewCategory({super.key});

  @override
  State<ListViewCategory> createState() => _ListViewCategoryState();
}

class _ListViewCategoryState extends State<ListViewCategory> {
  @override
  Widget build(BuildContext context) {
    final List<Categorymodel> category = getCategories(context);
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: category.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => GoRouter.of(
            context,
          ).push(AppRouter.categoryNews, extra: category[index].categoryname),
          child: ListViewCategorybody(category: category, index: index),
        ),
      ),
    );
  }
}
