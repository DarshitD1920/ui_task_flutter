import 'package:flutter/material.dart';
import 'package:uitask/foundations/themes/themes.dart';
import 'package:uitask/pages/main_page.dart';

import 'config/routes/app_routes.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case (AppRoutes.mainPage):
            return MaterialPageRoute(builder: (context) => const MainPage());
          default:
            return MaterialPageRoute(builder: (context) => const MainPage());
        }
      },
    );
  }
}
