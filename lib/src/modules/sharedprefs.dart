import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base/base_module.dart';
import '../base/module_widgets.dart';

class SharedPreferencesModule extends DebugDrawerModule {
  @override
  Widget build(BuildContext context) {
    return DebugDrawerModule(
      title: 'Shared preferences',
      child: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          if (!snapshot.hasData) {
            return SizedBox();
          }

          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (final key in snapshot.data.getKeys())
                DebugDrawerField(
                    label: key, value: snapshot.data.get(key).toString()),
            ],
          );
        },
      ),
    );
  }
}
