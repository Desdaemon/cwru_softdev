import 'package:flutter/widgets.dart';

class CenterFrame extends StatelessWidget {
  final Widget widget;
  final BoxConstraints constraints;
  const CenterFrame(this.widget, {Key? key, this.constraints = const BoxConstraints(maxWidth: 1080)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: constraints,
        child: widget,
      ),
    );
  }
}
