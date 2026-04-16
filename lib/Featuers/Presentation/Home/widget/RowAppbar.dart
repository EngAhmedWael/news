import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Core/utils/widget/logoApp.dart';

class RowAppbar extends StatelessWidget {
  const RowAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => context.goNamed(AppRouter.home),
          icon: Icon(Icons.arrow_back, size: 30),
        ),

        Expanded(child: logoApp()),
      ],
    );
  }
}
