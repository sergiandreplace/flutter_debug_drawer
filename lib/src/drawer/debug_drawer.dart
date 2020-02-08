import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'debug_drawer_theme.dart';

class DebugDrawerBuilder {
  static TransitionBuilder build({
    List<Widget> modules = const [],
    DebugDrawerTheme theme,
  }) {
    if (!kReleaseMode) {
      return (BuildContext context, Widget widget) => DebugDrawer(
            child: widget,
            modules: modules,
            theme: theme ?? DebugDrawerTheme.defaultTheme,
          );
    } else {
      return null;
    }
  }
}

class DebugDrawer extends StatelessWidget {
  final Widget child;

  final DebugDrawerTheme theme;

  final List<Widget> modules;

  DebugDrawer({
    Key key,
    this.child,
    this.modules = const [],
    this.theme,
  }) : super(key: key);

  static DebugDrawer of(BuildContext context) {
    return context.ancestorWidgetOfExactType(DebugDrawer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: child,
      endDrawer: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: DebugDrawerBody(modules: modules),
      ),
    );
  }
}

class DebugDrawerBody extends StatelessWidget {
  const DebugDrawerBody({
    Key key,
    @required this.modules,
  }) : super(key: key);

  final List<Widget> modules;

  @override
  Widget build(BuildContext context) {
    DebugDrawerTheme theme = DebugDrawer.of(context).theme;

    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom),
      color: theme.backgroundColor,
      width: theme.width,
      child: ListView(
        children: modules,
      ),
    );
  }
}
