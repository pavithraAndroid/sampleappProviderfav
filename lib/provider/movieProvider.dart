import 'dart:math';

import 'package:flutter/material.dart';
import 'package:providerlist/models/Movie.dart';

final List<Movie> initialData=List.generate(50, (index) => Movie(title:"Movie $index", runTime:"${Random().nextInt(100) + 60} minutes"));
class MovieProvider with ChangeNotifier{
// all the movies (that will be displayed on the HomeScreen)
  final List<Movie>_movies=initialData;

  //Retrieve all movies
List<Movie> get movies => _movies;

// Favourite movies( that will be shown on the myList Screen)
final List<Movie> _myList=[];

// Retrieve Favourite Movie
List<Movie> get myList=> _myList;

//Adding a movie to the favourite List
void  addToList(Movie movie){
  _myList.add(movie);
  notifyListeners();
}

// Removing  a movie from the favourite list

void removeFromList(Movie movie){
  _myList.remove(movie);
  notifyListeners();
}
}