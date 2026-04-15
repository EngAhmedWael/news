import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class NewsCardShimmer extends StatelessWidget {
  const NewsCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // Image placeholder
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              const SizedBox(height: 10),

              // Title lines placeholder
              Container(
                height: 15,
                width: double.infinity,
                color: Colors.white,
              ),

              const SizedBox(height: 8),

              Container(height: 15, width: 200, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
