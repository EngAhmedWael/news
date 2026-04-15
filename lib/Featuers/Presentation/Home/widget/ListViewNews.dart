import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewNewsbody.dart';

class ListViewNews extends StatelessWidget {
  const ListViewNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
        onTap: () => GoRouter.of(context).push(AppRouter.news),
        child: ListViewNewsbody(),
      ),
      itemCount: 8,
    );
  }
}
