import 'package:bti_assignment/Assignments/Ass5%20Settings/providers/setting_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingProvider>(
      builder: (context, data, child) {
        return Scaffold(
          appBar: AppBar(title: Text("settings".tr()),),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text("is_arabic".tr(),style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Switch(
                    value: data.IsArabic , onChanged: (value) {
                    data.toggleIsEnglish(context);

                  },),
                ],
              ),
              Row(
                children: [
                  Text("mode".tr(),style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Switch(
                    value: data.isDark , onChanged: (value) {
                    data.toggleIsDark();
                  },),
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
