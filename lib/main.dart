import 'package:flutter/material.dart';
import 'package:myapp/main_page.dart';
// import the firebase core plugin
import 'package:firebase_core/firebase_core.dart';
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3748243086.
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}