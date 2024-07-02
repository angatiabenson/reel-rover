import 'package:flutter/material.dart';
import 'package:real_rover/app.dart';
import 'package:real_rover/features/views/widgets/movie_card.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ReelRover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
                itemBuilder: (_, index){
                return MovieCard();
            }),
          ),
        )
      ],
      ),
    );
  }
}
