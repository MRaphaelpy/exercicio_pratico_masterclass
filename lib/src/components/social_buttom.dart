import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/entities/social_entity.dart';

class SocialButtom extends StatelessWidget {
  const SocialButtom({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final SocialEntity entity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.padding / 2),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: entity.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Image.asset(
          entity.image,
          height: 30,
        ),
      ),
    );
  }
}
