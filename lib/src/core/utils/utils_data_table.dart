import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import '../../presentation/presentation.dart';
import '../../presentation/widgets/image_network_widget.dart';
import '../core.dart';

class UtilsDataTable {
  static DataColumn columnText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    Function(int, bool)? onSort,
    ColumnSize size = ColumnSize.M,
    Alignment alignment = Alignment.centerLeft,
    String? tooltip,
    bool numeric = false,
  }) {
    return DataColumn2(
      label: Align(
        alignment: alignment,
        child: Text(
          text,
          style: style ?? context.textTheme.titleMedium,
        ),
      ),
      tooltip: tooltip,
      numeric: numeric,
      onSort: onSort,
      size: size,
    );
  }

  static DataColumn columnEmpty(
    BuildContext context, {
    Function(int, bool)? onSort,
    ColumnSize size = ColumnSize.M,
    String? tooltip,
    bool numeric = false,
  }) {
    return DataColumn2(
      label: const SizedBox.shrink(),
      tooltip: tooltip,
      numeric: numeric,
      onSort: onSort,
      size: size,
    );
  }

  static DataCell cellText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    int maxLines = 2,
  }) {
    return DataCell(
      Text(
        text,
        style: style ?? context.textTheme.labelLarge,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  static DataCell cellOption(
    BuildContext context, {
    String? btnKey,
    Function? onTapEdit,
    Function? onTapDelete,
    Function? onTapCustom,
    PopUpItem<int>? customOption,
    bool customFirst = false,
    String? tooltip,
  }) {
    return DataCell(
      Center(
        child: PopUpOptionWidget<int>(
          items: [
            if (customOption != null && customFirst) customOption,
            if (onTapEdit != null)
              PopUpItem(
                value: 0,
                title: 'Edit',
                icon: Icons.edit,
                onSelect: (val) {
                  onTapEdit();
                },
              ),
            if (onTapDelete != null)
              PopUpItem(
                value: 1,
                title: 'Hapus',
                icon: Icons.delete,
                onSelect: (val) {
                  onTapDelete();
                },
              ),
            if (customOption != null && !customFirst) customOption,
          ],
        ),
      ),
    );
  }

  static DataCell cellButtonIcon(
    BuildContext context, {
    required IconData icon,
    double? iconSize,
    EdgeInsets? padding,
    Function? onTap,
  }) {
    return DataCell(
      Center(
        child: IconButton(
          onPressed: onTap as void Function()?,
          padding: padding ?? context.insets.zero,
          icon: Icon(
            icon,
            color: context.colorTheme.primaryColor,
            size: iconSize ?? 34,
          ),
        ),
      ),
    );
  }

  static DataCell cellWidget(
    BuildContext context, {
    required Widget child,
  }) {
    return DataCell(child);
  }

  static DataCell cellIconText(
    BuildContext context, {
    required IconData icon,
    required String text,
    double? iconSize,
    TextStyle? textStyle,
    int maxLines = 2,
    Widget? customWidget,
  }) {
    return DataCell(
      Row(
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          AppDimens.horizontalSpace26,
          if (customWidget == null)
            Flexible(
              child: Text(
                text,
                style: textStyle ?? context.textTheme.titleMedium!.copyWith(color: context.colorTheme.primaryColor),
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
              ),
            )
          else
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: textStyle ?? context.textTheme.titleMedium!.copyWith(color: context.colorTheme.primaryColor),
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppDimens.verticalSpace4,
                  customWidget,
                ],
              ),
            ),
        ],
      ),
    );
  }

  static DataCell cellLogoText(
    BuildContext context, {
    required String? logo,
    required String text,
    double logoWidth = 54,
    double logoHeigth = 54,
    TextStyle? textStyle,
    int maxLines = 2,
    Widget? customWidget,
  }) {
    return DataCell(
      Row(
        children: [
          ImageNetworkWidget(
            borderRadius: context.radius.circle,
            imageUrl: logo,
            width: logoWidth,
            height: logoHeigth,
          ),
          AppDimens.horizontalSpace26,
          if (customWidget == null)
            Flexible(
              child: Text(
                text,
                style: textStyle ?? context.textTheme.titleMedium!.copyWith(color: context.colorTheme.primaryColor),
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
              ),
            )
          else
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: textStyle ?? context.textTheme.titleMedium!.copyWith(color: context.colorTheme.primaryColor),
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppDimens.verticalSpace4,
                  customWidget,
                ],
              ),
            ),
        ],
      ),
    );
  }
}
