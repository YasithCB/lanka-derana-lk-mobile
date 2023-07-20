import 'package:flutter/material.dart';

class ItemSearchDelegate extends SearchDelegate<String> {
  // Implement your search logic here

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show search results based on the query
    return Text('Search Results for: $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show suggestions while typing in the search bar
    return Text('Suggestions for: $query');
  }
}
