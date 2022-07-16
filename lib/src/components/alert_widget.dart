import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    Key? key,
    this.isError = false,
    this.onTap,
  }) : super(key: key);
  final bool isError;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = Constants.padding;
    return AnimatedPositioned(
      bottom: isError ? 0 : -(60 + padding),
      left: padding * 2,
      duration: const Duration(milliseconds: 300),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding),
        margin: EdgeInsets.only(bottom: padding),
        height: 60,
        width: size.width - 80,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Erro no login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
