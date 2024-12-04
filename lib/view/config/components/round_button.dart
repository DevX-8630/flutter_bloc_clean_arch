import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_arch/view/config/app_colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 20,
  });

  final String title;
  final VoidCallback onTap;
  final double height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
