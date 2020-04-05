import 'package:flutter/material.dart';

import '../drawer/debug_drawer.dart';

class DebugDrawerField extends StatelessWidget {
  const DebugDrawerField({Key key, this.label, this.value}) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = DebugDrawer.of(context).theme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.topLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(right: 8),
              width: 120,
              child: Text(
                '$label:',
                style: theme.labelStyle,
              )),
          Expanded(
            child: Text(
              value,
              style: theme.valueStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class DebugDrawerButton extends StatelessWidget {
  const DebugDrawerButton({
    Key key,
    this.onPressed,
    this.label,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = DebugDrawer.of(context).theme;

    return Container(
      child: RaisedButton(
        color: theme.buttonColor,
        onPressed: onPressed,
        child: Text(
          label,
          style: theme.buttonStyle,
        ),
      ),
    );
  }
}
