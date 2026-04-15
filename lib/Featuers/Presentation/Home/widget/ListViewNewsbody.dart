import 'package:flutter/material.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Data/Model/Newsmodel.dart';

class ListViewNewsbody extends StatelessWidget {
  const ListViewNewsbody({super.key, required this.article});
  final Newsmodel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.network(
                article.urlToImage == null
                    ? "https://as2.ftcdn.net/v2/jpg/02/12/50/11/1000_F_212501134_9byDWDYbOIrxY0vE1iCTF4ZztasKlwek.jpg"
                    : article.urlToImage!,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 2),
            Text(
              article.title == null ? '' : article.title!,
              style: AppStyle.titleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
