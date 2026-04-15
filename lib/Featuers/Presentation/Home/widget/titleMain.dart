import 'package:flutter/material.dart';
import 'package:news/Core/utils/style.dart';

class Titlemain extends StatelessWidget {
  const Titlemain({super.key, required this.title, required this.size});
  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.bodyStyle),
        Divider(
          indent: 0,
          endIndent: MediaQuery.sizeOf(context).width * size,
          thickness: 3,
          color: Colors.black,
        ),
      ],
    );
  }
}
