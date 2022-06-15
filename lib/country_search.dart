import 'package:busquedas/services/country_services.dart';
import 'package:flutter/material.dart';

import 'models/country.dart';

class CountrySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => query = '',
          icon: const Icon(
            Icons.clear,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(
          Icons.arrow_back_ios,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().isEmpty) {
      return const Text("No hay nada que buscar");
    }
    //print(query);
    final countryService = CountryService();

    return FutureBuilder<CountryModelResponse?>(
        future: countryService.getCountryByName(query),
        builder: (context, snap) {
          if (snap.hasData) {
            return Text("data");
          }
          return const Center(child: CircularProgressIndicator());
        });

    //return Text("buildResults");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text(
        "buildSuggestions",
      ),
    );
  }
}
