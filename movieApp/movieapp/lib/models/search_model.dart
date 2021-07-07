// To parse this JSON data, do
//
//     final searchMovies = searchMoviesFromMap(jsonString);

import 'dart:convert';

import 'package:movieapp/models/modelos.dart';

class SearchMovies {
  SearchMovies({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  factory SearchMovies.fromJson(String str) =>
      SearchMovies.fromMap(json.decode(str));

  factory SearchMovies.fromMap(Map<String, dynamic> json) => SearchMovies(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
