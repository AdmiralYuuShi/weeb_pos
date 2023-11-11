import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weeb_pos/src/presentation/pages/pos/cash_balances_page.dart';
import 'package:weeb_pos/src/presentation/pages/pos/pos_home_page.dart';

import '../../../core/core.dart';
import '../../blocs/blocs.dart';
import '../../widgets/image_asset_widget.dart';
import 'menu_item_page.dart';
import 'sales_list_page.dart';
import 'users_page.dart';
import 'widgets/pos_drawer.dart';

class PosPage extends StatefulWidget {
  static String route = '/pos';
  const PosPage({super.key});

  @override
  State<PosPage> createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (SharedPrefs().userId.isEmpty) {
        print('NOT LOGED IN');
        // context.go(LoginPage.route);
      }
    });
  }

  int pageIndex = 0;

  @override
  void initState() {
    context.read<MenuBloc>().add(const MenuEvent.getGroupMenus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double appShortestSide = MediaQuery.of(context).size.shortestSide;

    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              backgroundColor: context.colorTheme.backgroundColor,
              centerTitle: true,
              title: const Text('WEEB POS'),
            ),
            drawer: PosDrawer(
              selectedPage: pageIndex,
              onNavigate: (i) {
                _onSelectPage(i);
                if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
                  _scaffoldKey.currentState?.openEndDrawer();
                }
              },
            ),
            body: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Opacity(
                      opacity: 0.3,
                      child: ImageAssetWidget(
                        path: AppAssets.kagamin,
                        width: appShortestSide - 80,
                        height: appShortestSide - 80,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  IndexedStack(
                    index: pageIndex,
                    children: [
                      PosHomePage(
                        onSelectOrderList: () {
                          _onSelectPage(1);
                        },
                        onCashBalances: () {
                          _onSelectPage(3);
                        },
                      ),
                      SalesListPage(),
                      MenuItemPage(),
                      CashBalancesPage(),
                      UsersPage(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onSelectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
