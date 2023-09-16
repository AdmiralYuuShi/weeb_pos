import 'package:flutter/material.dart';
import '../../core/core.dart';

class FieldTitleWidget extends StatelessWidget {
  final String title;
  final bool isRequired;

  const FieldTitleWidget({
    Key? key,
    required this.title,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isRequired)
          Text(
            '*',
            style: context.textTheme.titleMedium!.copyWith(
              color: AppColors.accent2,
            ),
          ),
        Text(
          title,
          style: context.textTheme.titleMedium!.copyWith(
            color: context.colorTheme.primaryColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
