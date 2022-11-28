import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app_ui/pages/main_page.dart';

void main() {
  // disable landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainPage(),
    ),
  );
}
