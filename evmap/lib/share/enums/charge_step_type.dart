import 'package:rabbitevc/share/utils/localization_utils.dart';

enum ChargeStepType {
  step1,
  step2,
  step3,
  step4;

  const ChargeStepType();

  String? get stepTitle {
    switch (this) {
      case ChargeStepType.step1:
        return S.text?.charge_step1_title;
      case ChargeStepType.step2:
        return S.text?.charge_step2_title;
      case ChargeStepType.step3:
        return S.text?.charge_step3_title;
      case ChargeStepType.step4:
        return S.text?.charge_step4_title;
    }
  }
}
