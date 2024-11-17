import 'package:flutter/material.dart';
import 'package:movie_app/color_constants.dart';
import 'package:movie_app/inner_shadow_painter.dart';

class ShadowBorderCard extends StatelessWidget {
  final Widget? content;
  const ShadowBorderCard({
    super.key,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        // padding: const EdgeInsets.all(16),
        child: content,
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: ColorConstant.color1,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
