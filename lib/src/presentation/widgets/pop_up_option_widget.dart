import 'package:flutter/material.dart';

import '../presentation.dart';

class PopUpItem<T> {
  final String title;
  final IconData? icon;
  final Color? iconColor;
  final TextStyle? textStyle;
  final T value;
  final Function(T)? onSelect;

  PopUpItem({
    required this.title,
    required this.value,
    this.icon,
    this.iconColor,
    this.textStyle,
    this.onSelect,
  });
}

class PopUpOptionWidget<T> extends StatelessWidget {
  final List<PopUpItem<T>> items;
  final String? tooltip;

  const PopUpOptionWidget({
    super.key,
    required this.items,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopUpItem<T>>(
      onSelected: (item) {
        item.onSelect?.call(item.value);
      },
      tooltip: tooltip ?? 'Opsi',
      itemBuilder: (BuildContext context) => items
          .map(
            (e) => PopupMenuItem<PopUpItem<T>>(
              value: e,
              child: Text(e.title),
            ),
          )
          .toList(),
    );
  }
}
