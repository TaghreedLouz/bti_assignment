import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier {
  bool isDark = false;
  bool IsArabic = false;

  toggleIsDark() {
    isDark = !isDark;
    notifyListeners();
  }

  toggleIsEnglish(BuildContext context) {
    IsArabic = !IsArabic;

    Locale local = context.locale;
    bool isArabic = local == Locale("en");

    if (isArabic) {
      context.setLocale(Locale("ar"));
    } else {
      context.setLocale(Locale("en"));
    }

    notifyListeners();
  }


}
