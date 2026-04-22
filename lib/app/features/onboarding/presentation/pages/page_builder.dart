import 'package:ecomerce_app/app/shared/ui/app_colors.dart';
import 'package:flutter/material.dart';

class PageBuilder extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final String title;
  final String description;
  final Gradient? gradient;
  const PageBuilder({
    super.key,
    this.color,
    required this.icon,
    required this.title,
    required this.description,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        spacing: 20,
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          Container(
            padding: const .all(30),
            decoration: BoxDecoration(
              borderRadius: .circular(40),
              color: color,
              gradient: gradient,
            ),
            child: Icon(
              icon,
              size: 50,
              color: AppColors.card,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            description,
            textAlign: .center,
            style: TextStyle(
              color: AppColors.gray600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
