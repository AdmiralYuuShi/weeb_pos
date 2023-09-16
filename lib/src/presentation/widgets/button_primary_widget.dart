import 'package:flutter/material.dart';

import '../../core/core.dart';

class ButtonPrimaryWidget extends StatelessWidget {
  final Function? onPressed;
  final Function? onLongPress;
  final Color? color;
  final String? text;
  final int? textMaxLines;
  final bool isLoading;
  final Color? textColor;
  final bool expanded;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final IconData? icon;
  final Widget? iconWidget;
  final Widget? child;

  const ButtonPrimaryWidget({
    Key? key,
    this.text,
    this.onPressed,
    this.onLongPress,
    this.color,
    this.isLoading = false,
    this.textColor,
    this.expanded = false,
    this.width,
    this.height,
    this.textStyle,
    this.padding,
    this.icon,
    this.iconWidget,
    this.textMaxLines,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        onLongPress: onLongPress as void Function()?,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: context.radius.all(8)),
          backgroundColor: color ?? AppColors.accent,
        ),
        child: child ??
            Container(
              width: expanded ? double.infinity : null,
              padding: padding ?? context.insets.xy(20, 10),
              child: isLoading
                  ? const Text('...')
                  : Row(
                      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (iconWidget != null)
                          iconWidget!
                        else if (icon != null)
                          Icon(
                            icon,
                            size: 16,
                            color: textColor ?? AppColors.primary,
                          ),
                        if (icon != null || iconWidget != null) AppDimens.horizontalSpace10,
                        Flexible(
                          child: Text(
                            text ?? '',
                            style: textStyle ??
                                context.textTheme.labelLarge!.copyWith(
                                  color: textColor ?? AppColors.primary,
                                ),
                            maxLines: textMaxLines,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
            ),
      ),
    );
  }
}
