import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movieRepository = MovieRepository();
    final List<Movie> movies = movieRepository.getMovies();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Movies "),
        ),
        body: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: movies[index]);
            }));
  }
}
