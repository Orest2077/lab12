import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/rgb_provider.dart';
import './widgets/color_preview_section.dart';
import './widgets/rgb_sliders_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RgbProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KN-31: Orest Lab 12',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RgbPickerScreen(),
    );
  }
}

class RgbPickerScreen extends StatelessWidget {
  const RgbPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text('KN-31: Orest\'s RGB Picker'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorPreviewSection(),
            SizedBox(height: 32),
            RgbSlidersSection(),
          ],
        ),
      ),
    );
  }
}
