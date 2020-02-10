import 'dart:io';

import 'package:flutter/material.dart';

import '../base/base_module.dart';
import '../base/module_widgets.dart';

class PlatformModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DebugDrawerModule(
      title: 'Platform',
      child: Column(
        children: [
          DebugDrawerField(
            label: 'OS',
            value: '${Platform.operatingSystem}',
          ),
          DebugDrawerField(
            label: 'OS Version',
            value: '${Platform.operatingSystemVersion}',
          ),
          DebugDrawerField(
            label: 'Isolate script',
            value: '${Platform.script.toString()}',
          ),
          DebugDrawerField(
            label: 'Path separator',
            value: '${Platform.pathSeparator}',
          ),
          DebugDrawerField(
            label: 'Locale name',
            value: '${Platform.localeName}',
          ),
          DebugDrawerField(
            label: 'Local hostname',
            value: '${Platform.localHostname}',
          ),
          DebugDrawerField(
            label: 'Processors',
            value: '${Platform.numberOfProcessors}',
          ),
          DebugDrawerField(
            label: 'Package config',
            value: '${Platform.packageConfig}',
          ),
        ],
      ),
    );
  }
}
