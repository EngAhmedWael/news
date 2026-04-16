import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/widget/ListViewNews.dart';

import 'package:news/Featuers/Presentation/Home/widget/listviewcategory.dart';
import 'package:news/Featuers/Presentation/Home/widget/titleMain.dart';
import 'package:news/l10n/app_localizations.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Titlemain(title: AppLocalizations.of(context)!.category, size: 0.66),
        ListViewCategory(),
        SizedBox(height: 15),

        Titlemain(title: AppLocalizations.of(context)!.news_today, size: 0.58),
        ListViewNews(),
      ],
    );
  }
}
