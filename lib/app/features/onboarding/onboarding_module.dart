import 'package:ecomerce_app/app/core/app_module.dart';
import 'package:ecomerce_app/app/features/onboarding/controller/onboarding_controller.dart';
import 'package:ecomerce_app/app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingModule extends Module {
  @override
  List<Module> get imports => [
    ApPModule(),
  ];

  @override
  void binds(Injector i) {
    i.addLazySingleton(
      OnboardingController.new,
    );
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (context) => OnboardingPage(),
    );
    super.routes(r);
  }
}
