import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Data/Model/Newsmodel.dart';
import 'package:news/Featuers/Presentation/Home/widget/RowAppbar.dart';

class Newsbody extends StatelessWidget {
  const Newsbody({super.key, required this.article});
  final Newsmodel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
      child: Column(
        children: [
          RowAppbar(),
          SizedBox(height: 20),
          Text(
            article.title == null ? '' : article.title!,
            style: AppStyle.titleStyle,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image.network(
                article.urlToImage == null
                    ? "https://as2.ftcdn.net/v2/jpg/02/12/50/11/1000_F_212501134_9byDWDYbOIrxY0vE1iCTF4ZztasKlwek.jpg"
                    : article.urlToImage!,
                fit: BoxFit.fill,
              ),
            ),
          ),

          Text(
            article.description == null ? '' : article.description!,
            style: AppStyle.subtitleStyle,
          ),
        ],
      ),
    );
  }
}
