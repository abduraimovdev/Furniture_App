import 'package:flutter/material.dart';

import 'services/app_routes.dart';
import 'services/theme/app_theme.dart';

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      theme: AppThemeData.lightThemeData,
      routes: AppRoutes.routes,
    );
  }
}
