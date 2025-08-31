import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/core/utils/size_configs.dart';
import 'package:movie_app/presentation/splash/pages/splash.dart';

import 'core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfigs.init(context);
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          home: SplashPage(),
        );
      },
    );
  }
}
