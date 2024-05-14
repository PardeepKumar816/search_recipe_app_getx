import 'package:flutter/material.dart';
import 'package:search_recipe_app_getx/utils/colors.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        "unleash the CHEF in you",
        style: TextStyle(
          color: whiteColor,
          fontSize: 40.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}