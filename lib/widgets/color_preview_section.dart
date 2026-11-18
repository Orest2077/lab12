import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/rgb_provider.dart';

class ColorPreviewSection extends StatelessWidget {
  const ColorPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final rgb = context.watch<RgbProvider>();

    return Column(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: rgb.currentColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black26, width: 2),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'RGB(${rgb.red}, ${rgb.green}, ${rgb.blue})',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
