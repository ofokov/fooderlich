import 'package:basic_widgets/fooderlich_theme.dart';
import 'package:flutter/material.dart';

import 'author_card.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map2.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            AuthorCard(
              authorName: "Mike Katz",
              title: "Smoothie Connoisseur",
              imageProvider: AssetImage("assets/map1.jpg"),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      "Recipe",
                      style: FooderlichTheme.darkTextTheme.headlineLarge,
                    ),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Smoothies",
                        style: FooderlichTheme.darkTextTheme.headlineLarge,
                      ),
                    ),
                    bottom: 70,
                    left: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
