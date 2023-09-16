import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../widgets/image_asset_widget.dart';
import '../../../widgets/widgets.dart';

class DrawerItem {
  final String text;
  final GestureTapCallback? onTap;

  DrawerItem({required this.text, this.onTap});
}

class PosDrawer extends StatelessWidget {
  final int selectedPage;
  final Function onNavigate;
  const PosDrawer({super.key, required this.onNavigate, required this.selectedPage});

  @override
  Widget build(BuildContext context) {
    List<DrawerItem> drawerItems = [
      DrawerItem(text: 'POS', onTap: () {}),
      DrawerItem(text: 'Penjualan', onTap: () {}),
      DrawerItem(text: 'Menu Item', onTap: () {}),
      DrawerItem(text: 'Keuangan', onTap: () {}),
      DrawerItem(text: 'Pengguna', onTap: () {}),
    ];

    double appWidth = MediaQuery.of(context).size.width;

    return Container(
      height: double.infinity,
      width: (appWidth < 400 ? appWidth : 400) - 100,
      color: context.colorTheme.backgroundColor.withOpacity(0.8),
      child: Column(
        children: [
          const SizedBox(height: kToolbarHeight),
          Row(
            children: [
              AppDimens.horizontalSpace16,
              ImageAssetWidget(
                path: AppAssets.shigu,
                width: 40,
                height: 40,
                borderRadius: context.radius.all(999),
              ),
              AppDimens.horizontalSpace10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text('Wibu Sepuh'),
                  ],
                ),
              ),
              AppDimens.horizontalSpace10,
              PopupMenuButton<int>(
                onSelected: (item) {},
                tooltip: 'Opsi',
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 0,
                    child: Text('Logout'),
                  ),
                ],
              ),
            ],
          ),
          AppDimens.verticalSpace40,
          Expanded(
            child: ListView.separated(
              itemCount: drawerItems.length,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (_, __) => const AppDivider(),
              itemBuilder: (context, index) {
                DrawerItem item = drawerItems[index];
                return Material(
                  color: Colors.transparent,
                  child: ListTile(
                    selected: index == selectedPage,
                    title: Text(item.text),
                    onTap: () {
                      onNavigate(index);
                    },
                  ),
                );
              },
            ),
          ),
          const Divider(),
          AppDimens.verticalSpace10,
          const Text('©2023 Admiral YuuShi'),
          AppDimens.verticalSpace10,
        ],
      ),
    );
  }
}
