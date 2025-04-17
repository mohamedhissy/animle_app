import 'package:animalsapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'config/dependancy_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://onrolwqjeygbcuqyxoah.supabase.co',
    anonKey:
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9ucm9sd3FqZXlnYmN1cXl4b2FoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQ4MDE1MjksImV4cCI6MjA2MDM3NzUyOX0._Nw4VYwzXIMIvvVJHIDXf1sqQ0j-NTcpIK3pnoYH77M',
  );
  await MobileAds.instance.initialize(); // ✅ تهيئة AdMob
  await initModule();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: Routes.homeView,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
