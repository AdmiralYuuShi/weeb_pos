import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/core.dart';
import '../presentation.dart';
import 'field_title_widget.dart';
import 'image_memory_widget.dart';

class ImageMemoryFieldWidget extends StatelessWidget {
  final Function? onTap;
  final Uint8List? bytes;
  final BoxFit? fit;
  final String? hintText;
  final double size;
  final String? title;
  final bool isRequired;
  final bool showIcon;
  final Color? color;

  const ImageMemoryFieldWidget({
    Key? key,
    this.onTap,
    this.fit = BoxFit.scaleDown,
    this.hintText,
    this.size = 99,
    this.title,
    this.isRequired = false,
    this.showIcon = true,
    this.color,
    this.bytes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          FieldTitleWidget(
            title: title!,
            isRequired: isRequired,
          ),
        if (title != null) AppDimens.verticalSpace10,
        SizedBox(
          width: size,
          height: size,
          child: Stack(
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: color ?? context.colorTheme.backgroundColor,
                  borderRadius: context.radius.all(8),
                ),
                alignment: Alignment.center,
                child: ImageMemoryWidget(
                  fit: fit,
                  width: size,
                  height: size,
                  borderRadius: context.radius.all(8),
                  bytes: bytes,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    if (onTap != null) {
                      onTap!();
                    }
                  },
                  borderRadius: context.radius.all(8),
                  child: SizedBox(width: size, height: size),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
