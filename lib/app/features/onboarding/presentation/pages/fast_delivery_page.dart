import 'package:ecomerce_app/app/features/onboarding/presentation/pages/page_builder.dart';
import 'package:ecomerce_app/app/shared/ui/app_colors.dart';
import 'package:flutter/material.dart';

class FastDeliveryPage extends StatelessWidget {
  const FastDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      icon: Icons.delivery_dining_outlined,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColors.green500,
          AppColors.teal500,
        ],
      ),
      title: 'Entrega rápida',
      description: 'Receba seus produtos com segurança e agilidade',
    );
  }
}
