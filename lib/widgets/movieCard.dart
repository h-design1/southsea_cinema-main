import "package:flutter/material.dart";
import "package:southsea_cinema/models/movie.dart";

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext getContext) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(16 / 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Text("hello  "),
                ElevatedButton(onPressed: () {}, child: Text("my button")),
                Image.asset(movie.imagePath,
                    width: 80, height: 80, fit: BoxFit.cover),
                const SizedBox(width: 16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      movie.description,
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                )),
              ])
            ])));
  }
}
