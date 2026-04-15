import 'package:flutter/material.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Home/widget/RowAppbar.dart';

class Newsbody extends StatelessWidget {
  const Newsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
      child: Column(
        children: [
          RowAppbar(),
          SizedBox(height: 20),
          Text(
            "Apple introduces powerful AI tools with latest iOS 19 update.",
            style: AppStyle.titleStyle,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image.network(
                'https://tse1.mm.bing.net/th/id/OIP.UAD3SmmOK4wNV23uaMTDxgHaE8?pid=Api&h=220&P=0',
                fit: BoxFit.fill,
              ),
            ),
          ),

          Text(
            'Global stocks fall ahead of key U.S. interest rate decision.Global stocks slipped as investors await the U.S. Federal Reserve’s interest rate decision. While no hike is expected, markets are watching for hints on future cuts. The dollar weakened, bond yields fell, and volatility rose. Sectors like tech may benefit, while financials and industrials could face pressure from economic uncertainty.',
            style: AppStyle.subtitleStyle,
          ),
        ],
      ),
    );
  }
}
