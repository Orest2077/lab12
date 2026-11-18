import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/rgb_provider.dart';

class RgbSlidersSection extends StatelessWidget {
  const RgbSlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final rgb = context.watch<RgbProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Red: ${rgb.red}', style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: rgb.red.toDouble(),
          min: 0,
          max: 255,
          activeColor: Colors.red,
          onChanged: (val) => context.read<RgbProvider>().setRed(val),
        ),
        Text('Green: ${rgb.green}', style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: rgb.green.toDouble(),
          min: 0,
          max: 255,
          activeColor: Colors.green,
          onChanged: (val) => context.read<RgbProvider>().setGreen(val),
        ),
        Text('Blue: ${rgb.blue}', style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: rgb.blue.toDouble(),
          min: 0,
          max: 255,
          activeColor: Colors.blue,
          onChanged: (val) => context.read<RgbProvider>().setBlue(val),
        ),
      ],
    );
  }
}
