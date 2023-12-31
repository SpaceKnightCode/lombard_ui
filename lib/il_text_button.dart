import 'package:flutter/material.dart';

enum IconPosition { left, right }

class ILTextButton extends StatelessWidget {
  final String text;
  final bool? isFullWidth;
  final MaterialColor? backgroundColor;
  final Color? textColor;
  final bool? isCurved;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final bool? hasBorder;
  final Color? borderColor;
  final IconData? icon;
  final IconPosition? iconPosition;
  final double? textSize;

  const ILTextButton({
    super.key,
    required this.text,
    this.backgroundColor,
    required this.onPressed,
    this.textColor = Colors.white,
    this.isCurved = false,
    this.height,
    this.width,
    this.hasBorder = false,
    this.borderColor,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.isFullWidth = false,
    this.textSize,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: isFullWidth! ? double.infinity : width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isCurved! ? 30 : 10),
          color: backgroundColor ?? Theme.of(context).primaryColor,
          border: hasBorder! ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null && iconPosition == IconPosition.left)
              Icon(
                icon,
                color: textColor,
              ),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: textSize),
            ),
            if (icon != null && iconPosition == IconPosition.right)
              Icon(
                icon,
                color: textColor,
              ),
          ],
        ),
      ),
    );
  }
}
