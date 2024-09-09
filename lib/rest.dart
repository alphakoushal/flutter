import "package:flutter/material.dart";
import "package:myapp/component/rest.dart";

class Restaurent extends StatefulWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:442183373.
  const Restaurent({super.key, required this.title});
  final String title;
  @override
  State<Restaurent> createState() => _RestaurentState();
}

class _RestaurentState extends State<Restaurent> {
  final List<String> textarray = ['one two', 'two', 'three'];
  @override
// Suggested code may be subject to a license. Learn more: ~LicenseLog:589064024.
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Expanded(
              child: Column(children: [
            ListView(
              children:
                  textarray.map((item) => RestaurantCard(data: item)).toList(),
            ),
          ])),
        ],
      ),
    ));
  }
}
