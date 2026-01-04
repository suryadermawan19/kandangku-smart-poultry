import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // File ini otomatis muncul setelah 'flutterfire configure'

void main() async {
  // 1. Pastikan widget binding sudah terinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Inisialisasi Firebase berdasarkan opsi platform (Android/iOS)
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTech App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ), // UI Hijau & Ramah Lingkungan
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text("Firebase Connected!"))),
    );
  }
}
