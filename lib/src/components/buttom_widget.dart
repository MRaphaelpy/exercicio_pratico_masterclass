import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({
    Key? key,
    this.title = 'ENTRAR',
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);
  final bool isLoading;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 40,
        width: isLoading ? 40 : 100,
        decoration: BoxDecoration(
          color: const Color(0XFF6750A4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
