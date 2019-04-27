import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

import '../base/base_module.dart';
import '../base/module_widgets.dart';

class PackageModule extends StatefulWidget {
  @override
  _PackageModuleState createState() => _PackageModuleState();
}

class _PackageModuleState extends State<PackageModule> {
  String appName = "";
  String packageName = "";
  String version = "";
  String buildNumber = "";

  @override
  Widget build(BuildContext context) {
    return DebugDrawerModule(
      title: "Package Info",
      child: Column(
        children: [
          DebugDrawerField(
            label: "App name",
            value: "$appName",
          ),
          DebugDrawerField(
            label: "Package name",
            value: "$packageName",
          ),
          DebugDrawerField(
            label: "App version",
            value: "$version",
          ),
          DebugDrawerField(
            label: "Build number",
            value: "$buildNumber",
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((packageInfo) {
      setState(() {
        appName = packageInfo.appName;
        packageName = packageInfo.packageName;
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    });
  }
}
