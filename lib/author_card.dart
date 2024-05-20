import 'package:basic_widgets/circle_image.dart';
import 'package:basic_widgets/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CircleImage(
            imageProvider,
            imageRadius: 28,
          ),
          SizedBox(width: 8),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              authorName,
              style: FooderlichTheme.darkTextTheme.headlineMedium,
            ),
            Text(
              title,
              style: FooderlichTheme.darkTextTheme.headlineSmall,
            ),
          ]),
        ]),
        IconButton(
          onPressed: () {
            final snackBar = SnackBar(content: Text("Press the favorite"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: Icon(Icons.favorite_border),
          iconSize: 30,
          color: Colors.grey[400],
        )
      ]),
    );
  }
}
