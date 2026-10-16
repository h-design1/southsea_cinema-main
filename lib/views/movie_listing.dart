import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key,int ticketQuantity =1});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  final int _ticketQuantity = 1;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        color:cinemaBrand,
        child: Column(children: [
          const Text("Movie listing"),
          const Text("Displicable me"),
          const Text("Southsea cinema room"),
          const Text("26th october 2026"),
          ElevatedButton(
            onPressed: () {
              print("Add to order button pressed");
            },
            child: const Text("Add to order"),
          ),
          DropdownMenu<int>(
            initialSelection: _ticketQuantity,
            label: const Text("Select number of tickets"),
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: 1, label: "1"),
              DropdownMenuEntry(value: 2, label: "2"),
              DropdownMenuEntry(value: 3, label: "3"),
              DropdownMenuEntry(value: 4, label: "4"),
              DropdownMenuEntry(value: 5, label: "5"),
            ],
          ),
        ]),
      ),
    );
  }
}
