import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:summerclass/app/routes/app_pages.dart';
import 'package:summerclass/app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    )
  );
}


