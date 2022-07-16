import 'package:flutter/material.dart';

import 'entities/social_entity.dart';

class Constants {
  static double padding = 20;
  static List<SocialEntity> socialButtons = [
    SocialEntity(
      image: 'assets/images/google-logo.png',
      color: const Color(0XFFEA4335),
    ),
    SocialEntity(
      image: 'assets/images/facebook-logo.png',
      color: const Color(0XFF1977F3),
    ),
    SocialEntity(
      image: 'assets/images/apple-logo.png',
      color: Colors.black,
    ),
  ];
  static Color primaryColor = const Color(0XFF6750A4);
  static InputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Constants.primaryColor,
    ),
  );
}
