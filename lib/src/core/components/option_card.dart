import 'package:flutter/material.dart';

import 'base_card.dart';

class HomeOptionCard extends StatelessWidget {
  final String title;
  final IconData iconData;

  const HomeOptionCard({Key? key, required this.title, required this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
      showShadow: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.cyan,
            size: 32,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.cyan, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
