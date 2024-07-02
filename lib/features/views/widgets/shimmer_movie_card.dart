import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerMovieCard extends StatelessWidget {
  const ShimmerMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 800),
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: true,
      direction: ShimmerDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.grey[300],
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 20.0,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 14.0,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 16.0,
                          height: 16.0,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Container(
                          width: 30.0,
                          height: 14.0,
                          color: Colors.grey[300],
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          width: 50.0,
                          height: 14.0,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
