import 'package:flutter/material.dart';
import 'package:real_rover/features/models/movie.dart';

import 'movie_card.dart';



class DataDisplay extends StatelessWidget {
  const DataDisplay({
    super.key,
    required this.movies
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: movies.length,
                itemBuilder: (_, index){
                  final data = movies[index];
                  return MovieCard(movie: data,);
                }),
          ),
        )
      ],
    );
  }
}