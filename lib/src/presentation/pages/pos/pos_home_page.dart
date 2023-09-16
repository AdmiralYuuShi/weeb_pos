import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../core/core.dart';
import '../../widgets/button_primary_widget.dart';
import '../../widgets/button_secondary_widget.dart';
import 'add_order_page.dart';

class PosHomePage extends StatefulWidget {
  final Function onSelectOrderList;
  final Function onCashBalances;
  const PosHomePage({super.key, required this.onSelectOrderList, required this.onCashBalances});

  @override
  State<PosHomePage> createState() => _PosHomePageState();
}

class _PosHomePageState extends State<PosHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: pageIndex,
      children: [
        SingleChildScrollView(
          padding: context.insets.horizontal(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppDimens.verticalSpace20,
              Text(
                'HARSA',
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
              Text(
                'X',
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
              Text(
                'ES KELAPA PLN BALEENDAH',
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
              AppDimens.verticalSpace20,
              const Divider(),
              AppDimens.verticalSpace20,
              ButtonPrimaryWidget(
                onPressed: () => _onSelectPage(1),
                child: Padding(
                  padding: context.insets.all(16),
                  child: Column(
                    children: [
                      const Icon(Ionicons.add_circle_outline, size: 36, color: AppColors.backgroundDark),
                      AppDimens.verticalSpace10,
                      Text(
                        'Tambah Pesanan',
                        style: context.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.backgroundDark),
                      ),
                    ],
                  ),
                ),
              ),
              AppDimens.verticalSpace16,
              ButtonSecondaryWidget(
                text: 'Daftar Pesanan',
                onPressed: () {
                  widget.onSelectOrderList();
                },
              ),
              AppDimens.verticalSpace12,
              ButtonSecondaryWidget(
                text: 'Keuangan',
                onPressed: () {
                  widget.onCashBalances();
                },
              ),
            ],
          ),
        ),
        AddOrderPage(onCancel: () => _onSelectPage(0)),
      ],
    );
  }

  void _onSelectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
