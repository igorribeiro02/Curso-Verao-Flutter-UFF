import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:summerclass/app/routes/app_pages.dart';
import 'package:summerclass/app/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    )
  );
}


