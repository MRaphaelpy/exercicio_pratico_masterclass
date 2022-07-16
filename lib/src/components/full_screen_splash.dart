import 'package:flutter/material.dart';

import '../utils/constants.dart';

class FullScreenSplash extends StatelessWidget {
  const FullScreenSplash({
    Key? key,
    required this.isSucesses,
  }) : super(key: key);

  final bool isSucesses;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      right: isSucesses ? 0 : Constants.padding * 2,
      top: isSucesses ? 0 : 394,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: isSucesses ? size.height : 0,
        width: isSucesses ? size.width : 0,
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(isSucesses ? 0 : size.width),
        ),
      ),
    );
  }
}
