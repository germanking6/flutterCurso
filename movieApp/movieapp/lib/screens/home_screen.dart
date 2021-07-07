import 'package:flutter/material.dart';
import 'package:movieapp/providers/movie_providers.dart';

import 'package:movieapp/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:movieapp/search/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () => showSearch(
                    context: context, delegate: MovieSearchDelegate()),
                icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            MovieSlider(
              movies: moviesProvider.popularMovies,
              onNextPage: () {
                moviesProvider.getPopularMovies();
              },
            ),
          ],
        ));
  }
}
