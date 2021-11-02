import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meals.dart';

class MealItem extends StatelessWidget {
  void selectMeal() {}
  final String imageUrl;
  final String title;
  final int duration;
  final Complexity;
  final Affordability;

  MealItem(
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.Complexity,
      @required this.Affordability);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: selectMeal,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((15))),
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Stack(children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(imageUrl,
                        height: 250, width: double.infinity, fit: BoxFit.cover))
              ]),
            ])));
  }
}
