import 'package:flutter/material.dart';

import 'core/app.dart';
import 'core/network/hive/hive_service.dart';

Future<void> main() => runMyApp();

Future<void> runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true; // Enable dithering for better quality
  await HiveService().init();
  runApp(
    const App(),
  );
}
