import 'package:flutter/material.dart';
import 'package:movieapp/models/modelos.dart';

import 'package:movieapp/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Result movie = ModalRoute.of(context)!.settings.arguments as Result;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(movie: movie),
          SliverList(
              delegate: SliverChildListDelegate([
            _MovInfo(movie: movie),
            SizedBox(
              height: 9,
            ),
            _Overview(movie: movie),
            _Overview(movie: movie),
            _Overview(movie: movie),
            _Overview(movie: movie),
            ActorSlider(movie.id)
          ]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Result movie;

  const _CustomAppBar({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.cyanAccent,
      expandedHeight: 350,
      collapsedHeight: 60,
      floating: false,
      pinned: true,
      snap: false,
      title: Row(children: [Spacer(), Text('data'), Spacer()]),
      actions: [
        Container(
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff00cf8d)),
          child: FittedBox(
            child: Text(
              ' En desarrollo ',
              style: TextStyle(
                fontSize: 29,
              ),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        background: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0, left: 80, right: 30),
                  child: Row(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.width * .2,
                          child:
                              Image(image: AssetImage('assets/no-image.jpg'))),
                      Container(
                        height: MediaQuery.of(context).size.width * .3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .1,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text(
                                'Lider: Chiles',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Magna officia officia consectetur est nulla minim commodo sint enim. Proident qui velit mollit consequat.Magna officia officia consectetur est nulla minim commodo sint enim. Proident qui velit mollit consequat.',
                    style: TextStyle(color: Colors.white70, fontSize: 10),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(5)),
                      margin: EdgeInsets.all(10),
                      child: FittedBox(
                        child: Text(
                          'Inicio: fechaIProject',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(5)),
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Entrega: fechaIProject',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class _CustomAppBar2 extends PreferredSize {
  final double height;

  _CustomAppBar2(this.height = kToolbarHeight) : super();

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Material(
      elevation: 2,
      child: Container(
        height: preferredSize.height,
        color: Colors.black,
        alignment: Alignment.center,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back, color: Colors.white)),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff00cf8d)),
                    child: FittedBox(
                      child: Text(
                        ' En desarrollo ',
                        style: TextStyle(
                          fontSize: 29,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.width * .3,
                        child: Image(image: AssetImage('assets/logoblc.png'))),
                    Container(
                      height: MediaQuery.of(context).size.width * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Text(
                              'Fugiat et proident consectetur qui consequat sit ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textTheme.headline5.fontSize),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text(
                              'Lider de proyecto: Chiles',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textTheme.subtitle2.fontSize),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Magna officia officia consectetur est nulla minim commodo sint enim. Proident qui velit mollit consequat.Magna officia officia consectetur est nulla minim commodo sint enim. Proident qui velit mollit consequat.',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: textTheme.subtitle2.fontSize - 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(10),
                    child: FittedBox(
                      child: Text(
                        'Inicio: fechaIProject',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Entrega: fechaIProject',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

class _MovInfo extends StatelessWidget {
  final Result movie;

  const _MovInfo({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Hero(
            tag: movie.movieId!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                  fit: BoxFit.cover,
                  height: 150,
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage(movie.fullPosterImg)),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 220,
                child: Text(
                  movie.title,
                  textAlign: TextAlign.left,
                  style: textTheme.headline6,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ),
              Container(
                width: 220,
                child: Text(
                  movie.originalTitle,
                  style: textTheme.subtitle1,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_half,
                    size: 15,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(movie.voteAverage.toString() + '/10',
                      style: textTheme.caption)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Result movie;

  const _Overview({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: Text(
        movie.overview,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
