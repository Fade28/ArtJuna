import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/favicon.png',
            width: 30,
          ),
          const SizedBox(width: 10),
          const Text(
            "ArtJuna",
            style: TextStyle(color: kPrimaryColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
