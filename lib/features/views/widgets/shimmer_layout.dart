import 'package:flutter/material.dart';
import 'package:real_rover/features/views/widgets/shimmer_movie_card.dart';


class ShimmerLayout extends StatelessWidget {
  const ShimmerLayout({super.key});


  @override
  Widget build(BuildContext context) {
    final shimmerLayouts = List.generate(5, (index) {
      return const ShimmerMovieCard();
    });
    return Column(
      children: shimmerLayouts,
    );
  }
}
