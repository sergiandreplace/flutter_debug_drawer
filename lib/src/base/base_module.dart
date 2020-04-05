import 'package:flutter/material.dart';

import '../drawer/debug_drawer.dart';

class DebugDrawerModule extends StatelessWidget {
  const DebugDrawerModule({Key key, this.title, this.child}) : super(key: key);

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = DebugDrawer.of(context).theme;
    return Padding(
      padding: theme.sectionMargin,
      child: Container(
        color: theme.sectionColor,
        padding: theme.sectionPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: theme.sectionTitleStyle,
            ),
            Padding(
              padding: theme.sectionTitleSeparatorPadding,
              child: Container(
                  height: theme.sectionTitleSeparatorHeight,
                  color: theme.sectionTitleSeparatorColor),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
