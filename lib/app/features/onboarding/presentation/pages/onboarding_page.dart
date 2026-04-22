import 'package:ecomerce_app/app/features/onboarding/controller/onboarding_controller.dart';
import 'package:ecomerce_app/app/features/onboarding/presentation/pages/buy_easy_page.dart';
import 'package:ecomerce_app/app/features/onboarding/presentation/pages/fast_delivery_page.dart';
import 'package:ecomerce_app/app/features/onboarding/presentation/pages/secury_payment_page.dart';
import 'package:ecomerce_app/app/shared/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  late OnboardingController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<OnboardingController>();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          SizedBox(
            height: 400,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                controller.pageIndex.value = index;
              },
              children: [
                BuyEasyPage(),
                FastDeliveryPage(),
                SecuryPaymentPage(),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: controller.pageIndex,
            builder: (context, value, child) {
              return SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.primary,
                  dotColor: AppColors.gray400,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              spacing: 20,
              mainAxisAlignment: .center,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(Size(150, 50)),
                    side: WidgetStateProperty.all(
                      BorderSide(
                        color: AppColors.primary,
                        width: 2,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Pular',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: controller.pageIndex,
                  builder: (context, value, child) {
                    return ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(150, 50)),
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.primary,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            value == 2 ? 'Começar' : 'Próximo',
                            style: TextStyle(
                              color: AppColors.card,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                            color: AppColors.card,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
