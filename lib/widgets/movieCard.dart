import "package:flutter/material.dart";
import "package:southsea_cinema/models/movie.dart";

class MovieCard extends StatefulWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext getContext){
     return const Card(
      child: Column()
     )
  }
}
