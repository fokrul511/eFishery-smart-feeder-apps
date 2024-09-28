import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/edit_schedule_screen.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/fidder_schedule_screen.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/home_screen.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

class EFisheryApp extends StatelessWidget {
  const EFisheryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: buildElevatedButtonThemeData(),
        outlinedButtonTheme: buildOutlinedButtonThemeData(),
      ),
    );
  }

  OutlinedButtonThemeData buildOutlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: CustomColor.primaryColor,
        side: BorderSide(color: CustomColor.primaryColor,width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  ElevatedButtonThemeData buildElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: CustomColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: CustomColor.primaryColor),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: CustomColor.primaryColor),
      ),
    );
  }
}
