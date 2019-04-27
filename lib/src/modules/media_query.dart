import 'package:flutter/material.dart';

import '../base/base_module.dart';
import '../base/module_widgets.dart';

class MediaQueryModule extends DebugDrawerModule {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return DebugDrawerModule(
      title: "MediaQuery",
      child: Column(
        children: [
          DebugDrawerField(
              label: "Size.width",
              value: "width: ${mediaQuery.size.width.toStringAsFixed(2)}"),
          DebugDrawerField(
            label: "size.height",
            value: "height: ${mediaQuery.size.height.toStringAsFixed(2)}",
          ),
          DebugDrawerField(
            label: "PixelRatio",
            value: "${mediaQuery.devicePixelRatio}",
          ),
          DebugDrawerField(
            label: "Accesible Navigation",
            value: "${mediaQuery.accessibleNavigation}",
          ),
          DebugDrawerField(
            label: "Always use 24 hour format",
            value: "${mediaQuery.alwaysUse24HourFormat}",
          ),
          DebugDrawerField(
            label: "Bold text",
            value: "${mediaQuery.boldText}",
          ),
          DebugDrawerField(
            label: "PixelRatio",
            value: "${mediaQuery.disableAnimations}",
          ),
          DebugDrawerField(
            label: "InvertColors",
            value: "${mediaQuery.invertColors}",
          ),
          DebugDrawerField(
            label: "Orientation",
            value: "${mediaQuery.orientation.toString()}",
          ),
          DebugDrawerField(
            label: "Platform Brightness",
            value: "${mediaQuery.platformBrightness}",
          ),
          DebugDrawerField(
            label: "Text scale factor",
            value: "${mediaQuery.textScaleFactor}",
          ),
          DebugDrawerField(
            label: "PixelRatio",
            value: "${mediaQuery.textScaleFactor}",
          ),
        ],
      ),
    );
  }
}
