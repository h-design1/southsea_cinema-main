import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            movie.imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(movie.name, style: const TextStyle(color: Colors.green)),
            Text(movie.description,
                style: const TextStyle(color: Colors.green)),
            Text(movie.price, style: const TextStyle(color: Colors.red)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MovieListing(movie: movie);
                  }));
                },
                child: const Text("book now"))
          ]),
        ]));
  }
}
