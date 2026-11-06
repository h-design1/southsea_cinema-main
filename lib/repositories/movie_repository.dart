// ignore: depend_on_referenced_packages
import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovie() {
    return const [
      Movie(
        id: "up",
        name: "up",
        description: "",
        price: "10.0",
        imagePath: "assets/images/up.jpg",
      ),
      Movie(
        id: "despicable me",
        name: "despicable me",
        description: "",
        price: "10.0",
        imagePath: "assets/images/despicable-me.jpg",
      )
    ];
  }
}
