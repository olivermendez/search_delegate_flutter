import 'package:busquedas/country_search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Aprendiendo Search Delegate"),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                showSearch(context: context, delegate: CountrySearchDelegate());
              },
              child: const Text(
                "buscar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
