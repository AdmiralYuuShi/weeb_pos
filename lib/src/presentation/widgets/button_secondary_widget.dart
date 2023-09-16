import 'package:flutter/material.dart';
import '../../core/core.dart';

class ButtonSecondaryWidget extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final IconData? icon;
  final bool isLoading;
  final bool expanded;
  final MainAxisAlignment alignment;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final double? iconSize;
  final Color? borderColor;

  const ButtonSecondaryWidget({
    Key? key,
    this.text,
    this.onPressed,
    this.onLongPress,
    this.icon,
    this.iconSize,
    this.isLoading = false,
    this.expanded = false,
    this.alignment = MainAxisAlignment.center,
    this.padding,
    this.textStyle,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed as void Function()?,
      onLongPress: onLongPress as void Function()?,
      style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: context.radius.all(8)),
        primary: borderColor ?? context.colorTheme.borderColor,
        side: BorderSide(color: borderColor ?? context.colorTheme.borderColor),
      ),
      child: Padding(
        padding: padding ?? context.insets.xy(20, 16),
        child: Row(
          mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: alignment,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: iconSize ?? 16,
                color: context.colorTheme.primaryColor,
              ),
            if (icon != null && text != null) AppDimens.horizontalSpace8,
            if (text != null)
              Text(
                text!,
                style: textStyle ??
                    context.textTheme.labelLarge!.copyWith(
                      color: context.colorTheme.primaryColor,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
