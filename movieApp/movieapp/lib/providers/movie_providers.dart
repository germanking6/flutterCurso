import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movieapp/helpers/debouncer.dart';
import 'package:movieapp/models/modelos.dart';

class MoviesProvider extends ChangeNotifier {
  String _baseUrl = 'api.themoviedb.org';
  String _apiKey = 'dd19d94cc2871e968b9235adc48619fe';
  String _language = 'es-ES';
  int page = 1;
  List<Result> onDisplayMovies = [];
  List<Result> popularMovies = [];
  Map<int, List<Cast>> castMovies = {};
  Map<String, List<Result>> searchMovies = {};

  final StreamController<List<Result>> _suggestionStreamController =
      new StreamController.broadcast();

  Stream<List<Result>> get suggestionStream =>
      this._suggestionStreamController.stream;

  final debouncer = Debouncer(
    duration: Duration(milliseconds: 600),
  );
  MoviesProvider() {
    print('MoviesProvider iniciando');

    this.getOnDisplayMovies();
    this.getPopularMovies();
  }

  Future<String> _getJsonData(String route, [int page = 1]) async {
    var url = Uri.https(this._baseUrl, route, {
      'api_key': _apiKey,
      'language': _language,
      'page': '$page',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    final nowPlayingResponse =
        NowPlayingResponse.fromJson(await _getJsonData('3/movie/now_playing'));

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    final nowPopular =
        PopularResponse.fromJson(await _getJsonData('3/movie/popular', page));
    page++;
    print('2222');
    popularMovies = [...popularMovies, ...nowPopular.results];
    notifyListeners();
  }

  Future<List<Cast>> getCastMovies(int id) async {
    if (castMovies.containsKey(id)) return castMovies[id]!;
    final response = await _getJsonData('3/movie/${id}/credits');
    final movieCastResponse = CastMovie.fromJson(response);
    castMovies[id] = movieCastResponse.cast;
    return movieCastResponse.cast;
  }

  Future<List<Result>> getSearchMovie(String query) async {
    if (castMovies.containsKey(query)) return searchMovies[query]!;
    var url = Uri.https(this._baseUrl, '3/search/movie',
        {'api_key': _apiKey, 'language': _language, 'query': query});
    final response = await http.get(url);
    final movieSearchResponse = SearchMovies.fromJson(response.body);
    searchMovies[query] = movieSearchResponse.results;
    return movieSearchResponse.results;
  }

  void getSuggestionsByQuery(String searchTerm) {
    debouncer.value = '';
    debouncer.onValue = (value) async {
      if (value != '') {
        final results = await getSearchMovie(value);
        this._suggestionStreamController.add(results);
      }
    };

    final timer = Timer.periodic(Duration(milliseconds: 300), (_) {
      print('object');
    });
    Future.delayed(Duration(microseconds: 301)).then((_) {
      timer.cancel();
      debouncer.value = searchTerm;
    });
  }
}
