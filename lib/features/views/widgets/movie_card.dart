import 'package:flutter/material.dart';
import 'package:real_rover/features/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.3,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.3,
            offset: Offset(0, -1),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.3,
            offset: Offset(1, 0),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.3,
            offset: Offset(-1, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://image.tmdb.org/t/p/original${movie.posterPath}"),
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
                  Text(
                    movie.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.apply(fontWeightDelta: 2),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    movie.overview,
                    style: Theme.of(context).textTheme.labelSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16.0,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        movie.voteAverage.toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Expanded(
                        child: Text(
                          movie.releaseDate,
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
