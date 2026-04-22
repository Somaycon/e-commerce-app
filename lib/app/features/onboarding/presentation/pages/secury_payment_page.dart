import 'package:ecomerce_app/app/features/onboarding/presentation/pages/page_builder.dart';
import 'package:ecomerce_app/app/shared/ui/app_colors.dart';
import 'package:flutter/material.dart';

class SecuryPaymentPage extends StatelessWidget {
  const SecuryPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      icon: Icons.credit_card,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColors.orange500,
          AppColors.pink500,
        ],
      ),
      title: 'Pagamento seguro',
      description: 'Suas informações protegidas com criptografia',
    );
  }
}
