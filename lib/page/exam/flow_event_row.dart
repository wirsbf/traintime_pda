import 'package:flutter/material.dart';
import 'package:watermeter/page/widget.dart';

@immutable
class FlowEventRow extends StatelessWidget {
  const FlowEventRow({
    super.key,
    required this.child,
    required this.isTitle,
  });

  final Widget child;
  final bool isTitle;

  double get circleRadius => 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isPhone(context) ? 8 : 20 - circleRadius,
            ),
            child: Container(
              width: circleRadius * 2,
              height: circleRadius * 2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isTitle
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
              ),
            ),
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}