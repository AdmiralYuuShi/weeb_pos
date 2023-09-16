import 'package:flutter/material.dart';
import '../../../../../core/core.dart';
import '../../../../../data/model/menu_item.dart';
import '../../../../widgets/image_network_widget.dart';

class SelectItemWidget extends StatelessWidget {
  final MenuItem item;
  const SelectItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: context.radius.all(8),
      onTap: () {},
      child: Stack(
        children: [
          ImageNetworkWidget(
            fit: BoxFit.cover,
            borderRadius: context.radius.all(8),
            imageUrl: 'https://pbs.twimg.com/media/Fi9wd7kaEAMPlcW.jpg',
            height: 100,
            width: double.infinity,
            alignment: Alignment.topCenter,
          ),
          Container(
            height: 100,
            width: double.infinity,
            padding: context.insets.xy(10, 8),
            decoration: BoxDecoration(
              borderRadius: context.radius.all(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  AppColors.backgroundDark,
                  AppColors.backgroundDark.withOpacity(0.8),
                  Colors.transparent,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  item.name,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium?.copyWith(color: context.colorTheme.primaryColor),
                ),
                AppDimens.verticalSpace2,
                Text(
                  'Rp${item.price}',
                  style: context.textTheme.bodyMedium?.copyWith(color: AppColors.accent, fontStyle: FontStyle.italic),
                ),
                AppDimens.verticalSpace2,
              ],
            ),
          )
        ],
      ),
    );
  }
}
