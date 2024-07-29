import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';

class GlassyContainer extends StatelessWidget {
  final Widget child;

  GlassyContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
      child: Container(
        alignment: Alignment.center,
        color: kcBlueAccent.withOpacity(0.1),
        child: child,
      ),
    );
  }
}
