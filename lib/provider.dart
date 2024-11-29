import 'package:flutter/material.dart';

/// A simple ChangeNotifier-based provider for managing favorite items.
class FavoritesProvider extends ChangeNotifier {
  // Private list to store favorite items
  final List<String> _favorites = [];

  /// Returns an unmodifiable list of favorite items
  List<String> get favorites => List.unmodifiable(_favorites);

  /// Adds an item to the favorites list if it's not already present
  void addFavorite(String item) {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
      notifyListeners(); // Notify listeners to rebuild the UI
    }
  }

  /// Removes an item from the favorites list
  void removeFavorite(String item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
      notifyListeners(); // Notify listeners to rebuild the UI
    }
  }

  /// Checks if an item is in the favorites list
  bool isFavorite(String item) {
    return _favorites.contains(item);
  }
}
