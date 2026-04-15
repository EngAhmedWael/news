import 'package:flutter/material.dart';
import 'package:news/Featuers/model/categorymodel.dart';

class ListViewCategorybody extends StatelessWidget {
  const ListViewCategorybody({
    super.key,
    required this.category,
    required this.index,
  });

  final List<Categorymodel> category;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5),
        child: Column(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.grey.shade400,

              child: CircleAvatar(
                backgroundImage: AssetImage(category[index].image),
                radius: 30,
              ),
            ),
            SizedBox(height: 5),
            Text(category[index].name),
          ],
        ),
      ),
    );
  }
}
