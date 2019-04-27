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
