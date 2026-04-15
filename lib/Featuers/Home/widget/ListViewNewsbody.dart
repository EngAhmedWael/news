import 'package:flutter/material.dart';
import 'package:news/Core/utils/style.dart';

class ListViewNewsbody extends StatelessWidget {
  const ListViewNewsbody({super.key});

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
                'https://tse1.mm.bing.net/th/id/OIP.qe_7n5UQkWhNgnyhgiKbJQHaE7?pid=Api&h=220&P=0',
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Apple introduces powerful AI tools with latest iOS 19 update.",
              style: AppStyle.titleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
