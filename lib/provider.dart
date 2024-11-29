import 'package:flutter/material.dart';


class FavoritesProvider extends ChangeNotifier {
  
  final List<String> _favorites = [];

  
  List<String> get favorites => List.unmodifiable(_favorites);

  
  void addFavorite(String item) {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
      notifyListeners(); 
    }
  }

  
  void removeFavorite(String item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
      notifyListeners(); 
    }
  }

  
  bool isFavorite(String item) {
    return _favorites.contains(item);
  }
}
