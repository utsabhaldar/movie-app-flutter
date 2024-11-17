import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_app/color_constants.dart';

class BackgroundEffect extends StatelessWidget {
  final List<Widget> dynamicChildren;
  const BackgroundEffect({super.key, required this.dynamicChildren});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: -50,
          child: Container(
            width: (230),
            height: (230),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(150, 187, 210, 1).withOpacity(0.3),
              borderRadius: BorderRadius.circular((50)),
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular((50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: (500),
          left: (-200),
          child: Container(
            width: (230),
            height: (230),
            decoration: BoxDecoration(
              color: ColorConstant.color6.withOpacity(0.3),
              borderRadius: BorderRadius.circular((50)),
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular((50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ...dynamicChildren
      ],
    );
  }
}
