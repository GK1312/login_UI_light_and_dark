import 'package:flutter/material.dart';
import 'package:login_ui_dark_light/screens/login.dart';
import 'package:login_ui_dark_light/themes/app_theme.dart';
import 'package:login_ui_dark_light/themes/theme_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            home: const LoginScreen(),
            theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    ),
  );
}
