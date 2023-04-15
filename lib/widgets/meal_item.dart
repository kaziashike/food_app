import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';

class MealItem extends StatelessWidget {
  final String imageURL;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  void selectMeal() {}
  const MealItem(
      {super.key,
      required this.imageURL,
      required this.title,
      required this.duration,
      required this.complexity,
      required this.affordability});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(),
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  child: Image.network(
                    imageURL,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('$duration min')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
