import 'dart:math';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';

class DebugDrawerBuilder {
  static TransitionBuilder build({
    double width,
    List<DebugDrawerModule> modules = const []
  }) =>
          (context, widget) {
        final _width = width ??= min(MediaQuery
            .of(context)
            .size
            .width - 0.75, 320,);

        return Scaffold(
          primary: false,
          body: widget,
          backgroundColor: Colors.transparent,
          endDrawer: Container(
            padding: EdgeInsets.fromLTRB(16, MediaQuery
                .of(context)
                .padding
                .top , 16, MediaQuery
                .of(context)
                .padding
                .bottom),
            color: Colors.black87,
            width: _width,
            child: ListView(
              children:
                 modules,


            ),
          ),
        );
      };
}

class DebugDrawerModule extends StatelessWidget {

  DebugDrawerModule({Key key, this.child}) : super(key: key);

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: child,
    ));
  }
}

class PlatformModule extends DebugDrawerModule {
  @override
  Widget build(BuildContext context) {
    return DebugDrawerModule(
      child: Table(columnWidths: {
        0: FlexColumnWidth(0.5),
        1: FixedColumnWidth(8),
        2: FlexColumnWidth(1)
      },
        children: [
          DebugDrawerLabel(label: "OS", value: "${Platform.operatingSystem}"),
          DebugDrawerLabel(label: "OS Version", value: "${Platform.operatingSystemVersion}"),
          DebugDrawerLabel(label: "Isolate script", value: "${Platform.script.toString()}"),
          DebugDrawerLabel(label: "Path separator", value: "${Platform.pathSeparator}"),
          DebugDrawerLabel(label: "Locale name", value: "${Platform.localeName}"),
          DebugDrawerLabel(label: "Local hostname", value: "${Platform.localHostname}"),
          DebugDrawerLabel(label: "Processors", value: "${Platform.numberOfProcessors}"),
        ],
      )
      ,
    );
  }
}

class MediaQueryModule extends DebugDrawerModule {
  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQuery = MediaQuery.of(context);
    return DebugDrawerModule(
      child: Table(columnWidths: {
        0: FlexColumnWidth(0.5),
        1: FixedColumnWidth(8),
        2: FlexColumnWidth(1)
      },
        children: [
          DebugDrawerLabel(label: "PixelRatio", value: "${mediaQuery.devicePixelRatio}"),
          DebugDrawerLabel(label: "Accesible Navigation", value: "${mediaQuery.accessibleNavigation}"),
          DebugDrawerLabel(label: "Always use 24 hour format", value: "${mediaQuery.alwaysUse24HourFormat}"),
          DebugDrawerLabel(label: "Bold text", value: "${mediaQuery.boldText}"),
          DebugDrawerLabel(label: "PixelRatio", value: "${mediaQuery.disableAnimations}"),
          DebugDrawerLabel(label: "InvertColors", value: "${mediaQuery.invertColors}"),
          DebugDrawerLabel(label: "Orientation", value: "${mediaQuery.orientation.toString()}"),
          DebugDrawerLabel(label: "Platform Brightness", value: "${mediaQuery.platformBrightness}"),
          DebugDrawerLabel(label: "Text scale factor", value: "${mediaQuery.textScaleFactor}"),
          DebugDrawerLabel(label: "PixelRatio", value: "${mediaQuery.textScaleFactor}"),
        ],
      )
      ,
    );
  }
}

class DebugDrawerLabel extends TableRow {

  final String label;
  final String value;


  DebugDrawerLabel({Key key, this.label, this.value}) : super(key: key, children: [
    Text(label),
    SizedBox(),
    Text(value)
  ]);


}