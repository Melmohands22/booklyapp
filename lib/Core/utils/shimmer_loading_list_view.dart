import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingListView extends StatelessWidget {
  final int itemCount;

  const ShimmerLoadingListView({Key? key, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              height: 80,
              
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // Container(
                  //   width: 20,
                  //   height: 300,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey,
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  // ),
                  const SizedBox(width: 40),
                  // Expanded(
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  // Container(
                  //   height: 20,
                  //   color: Colors.grey,
                  // ),
                  // const SizedBox(height: 8),
                  // Container(
                  //   height: 14,
                  //   color: Colors.grey,
                  // ),
                  // const SizedBox(height: 8),
                  // Container(
                  //   height: 14,
                  //   color: Colors.grey,
                  //   width: 50,
                  // ),
                  // const Spacer(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       height: 20,
                  //       width: 50,
                  //       color: Colors.grey,
                  //     ),
                  //     Container(
                  //       height: 20,
                  //       width: 50,
                  //       color: Colors.grey,
                  //     ),
                  //   ],
                  // ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
