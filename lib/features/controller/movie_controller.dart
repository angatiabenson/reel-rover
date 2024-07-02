import 'package:get/get.dart';
import 'package:real_rover/data/movie_api.dart';
import 'package:real_rover/features/models/movie.dart';

import '../../services/connectivity.dart';

class MovieController extends GetxController {
  var movies = <Movie>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchMovies();
    super.onInit();
  }

  void fetchMovies() async {
    isLoading(true);
    if (!await ConnectivityService.hasInternetConnection()) {
      errorMessage.value = 'No internet connection';
      isLoading(false);
      return;
    }

    try {
      var movieList = await MovieApi().fetchMovies();
      movies.assignAll(movieList);
      errorMessage.value = '';
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading(false);
    }
  }
}
