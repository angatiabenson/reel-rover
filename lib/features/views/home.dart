import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_rover/features/views/widgets/data_display.dart';
import 'package:real_rover/features/views/widgets/shimmer_layout.dart';

import '../controller/movie_controller.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MovieController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ReelRover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const ShimmerLayout();
        } else if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.errorMessage.value),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: controller.fetchMovies,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        } else {
          return DataDisplay(movies: controller.movies,);
        }
      }),
    );
  }
}
