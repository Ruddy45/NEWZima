import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class CircularIndicator extends Decoration {
  final Color color;
  double radius;

  CircularIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    final Offset CircleOffset = offset +
        Offset(configuration.size!.width/ 2,
            configuration.size!.height - radius);
    canvas.drawCircle(CircleOffset, radius, paint);
  }
}
