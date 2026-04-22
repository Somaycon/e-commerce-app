import 'package:ecomerce_app/app/features/onboarding/presentation/pages/page_builder.dart';
import 'package:ecomerce_app/app/shared/ui/app_colors.dart';
import 'package:flutter/material.dart';

class BuyEasyPage extends StatelessWidget {
  const BuyEasyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColors.blue500,
          AppColors.purple600,
        ],
      ),
      icon: Icons.shopping_bag_outlined,
      title: 'Compre com Facilidade',
      description: 'Milhares de produtor de qualidade ao seu alcance',
    );
  }
}
