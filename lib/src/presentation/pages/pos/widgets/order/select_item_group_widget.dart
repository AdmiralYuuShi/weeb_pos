import 'package:flutter/material.dart';
import 'package:weeb_pos/src/core/core.dart';

import '../../../../../data/model/menu_item.dart';
import 'select_item_widget.dart';

class SelectItemGroupWidget extends StatelessWidget {
  const SelectItemGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> groups = List<MenuItem>.from([]).map((e) => e.groupId).toSet().toList();

    return Padding(
      padding: context.insets.horizontal(16),
      child: DefaultTabController(
        length: groups.length,
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: context.colorTheme.textColor,
              labelColor: AppColors.accent,
              indicatorColor: AppColors.accent,
              dividerColor: context.colorTheme.borderColor,
              labelStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              unselectedLabelStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              tabs: groups.map((e) => Tab(text: e)).toList(),
            ),
            AppDimens.verticalSpace10,
            Expanded(
              child: TabBarView(
                children: groups.map((groupId) {
                  List<MenuItem> groupedMenuItems = List<MenuItem>.from([]).where((e) => e.groupId == groupId).toList();

                  return GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: groupedMenuItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: context.isMobile ? 2 : 6,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      height: 100,
                    ),
                    itemBuilder: (context, index) {
                      MenuItem item = groupedMenuItems[index];
                      return SelectItemWidget(item: item);
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
