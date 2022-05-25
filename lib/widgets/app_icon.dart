import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:get/route_manager.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final double size;

  const AppIcon({
    Key? key,
    required this.icon,
    this.bgColor = const Color(0xFFfcf4e4),
    this.iconColor=const Color(0xec2f2e2d),
    this.size=40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: bgColor,
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: iconColor,
        size: 16,
      ),
    );
  }
}
