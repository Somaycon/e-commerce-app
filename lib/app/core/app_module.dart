import 'package:ecomerce_app/app/features/onboarding/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ApPModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      '/',
      module: OnboardingModule(),
    );
    super.routes(r);
  }
}
