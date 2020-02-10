import 'package:flutter/material.dart';

import '../base/base_module.dart';
import '../base/module_widgets.dart';

class SharedPreferencesModule extends DebugDrawerModule {
  @override
  Widget build(BuildContext context) {
    return DebugDrawerModule(
      title: 'Shared preferences',
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DebugDrawerButton(
            label: 'Show shared preferences',
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) => SharedPrefsPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SharedPrefsPage extends StatefulWidget {
  @override
  _SharedPrefsPageState createState() => _SharedPrefsPageState();
}

class _SharedPrefsPageState extends State<SharedPrefsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared preferences'),
      ),
      body: Container(),
    );
  }
}
