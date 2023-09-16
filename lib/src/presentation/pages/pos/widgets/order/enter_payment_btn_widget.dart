import 'package:flutter/material.dart';
import '../../../../../core/core.dart';
import '../../../../widgets/image_network_widget.dart';

class EnterPaymentBtnWidget extends StatelessWidget {
  final int value;
  final Function(int) onSelect;
  const EnterPaymentBtnWidget({super.key, required this.value, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: context.radius.all(8),
      onTap: () {
        onSelect(value);
      },
      child: Stack(
        children: [
          ImageNetworkWidget(
            fit: BoxFit.cover,
            borderRadius: context.radius.all(8),
            imageUrl: 'https://pbs.twimg.com/media/Fi9wd7kaEAMPlcW.jpg',
            height: 50,
            width: double.infinity,
          ),
          Container(
            height: 50,
            width: double.infinity,
            padding: context.insets.xy(10, 8),
            decoration: BoxDecoration(
              borderRadius: context.radius.all(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  AppColors.backgroundDark,
                  AppColors.backgroundDark.withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '+$value',
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 26,
                    color: AppColors.mainBg,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
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
