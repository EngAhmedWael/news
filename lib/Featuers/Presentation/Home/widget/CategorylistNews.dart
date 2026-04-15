import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Presentation/Home/manager/NewsCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/Newstate.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListNewsloadingdata.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewNewsbody.dart';

class CategoryListNews extends StatefulWidget {
  const CategoryListNews({super.key, required this.category});
  final String category;
  @override
  State<CategoryListNews> createState() => _CategoryListNewsState();
}

class _CategoryListNewsState extends State<CategoryListNews> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<Newscubit>(
      context,
    ).getCategoryNewsData(la: 'en', category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Newscubit, NewsStates>(
      builder: (context, state) {
        // 🔹 Loading
        if (state is Newloading) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) => const NewsCardShimmer(),
          );
        }
        // 🔹 Success
        else if (state is Newsuccess) {
          final articles = state.newlist;

          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];

              return InkWell(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.news,
                  extra: article, // 🔥 مهم
                ),
                child: ListViewNewsbody(
                  article: article,
                  // 👈 مرر البيانات
                ),
              );
            },
          );
        }
        // 🔹 Error أو أي حالة تانية
        else if (state is Newerror) {
          return Center(child: Text(state.error));
        }

        // 🔹 fallback
        return const SizedBox();
      },
    );
  }
}
