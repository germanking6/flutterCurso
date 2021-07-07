import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/modelos.dart';
import 'package:movieapp/providers/movie_providers.dart';
import 'package:provider/provider.dart';

class ActorSlider extends StatelessWidget {
  final int id;
  const ActorSlider(this.id);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
      future: moviesProvider.getCastMovies(id),
      builder: (_, AsyncSnapshot<List<Cast>> snapshot) {
        if (snapshot.hasData == false) {
          return Container(
            constraints: BoxConstraints(maxWidth: 150),
            height: 250,
            child: CupertinoActivityIndicator(),
          );
        }
        List<Cast> cast = snapshot.data!;
        return Container(
          width: double.infinity,
          height: 250,
          child: ListView.builder(
            itemCount: cast.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) => _ActorImage(snapshot.data![index]),
          ),
        );
      },
    );
  }
}

class _ActorImage extends StatelessWidget {
  final Cast cast;
  const _ActorImage(this.cast);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(cast.fullPosterImg),
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            cast.originalName,
            maxLines: 2,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
          Text(
            cast.knownForDepartment,
            style: TextStyle(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
