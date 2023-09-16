import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/repositories_impl/auth_repository_impl.dart';
import '../../blocs/auth_bloc.dart';
import '../../presentation.dart';
import '../../../core/core.dart';
import '../../widgets/button_primary_widget.dart';
import '../../widgets/image_asset_widget.dart';
import '../pos/pos_page.dart';

class LoginPage extends StatefulWidget {
  static String route = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (SharedPrefs().userId.isNotEmpty) {
        print('LOGED IN');
        context.go(PosPage.route);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorTheme.backgroundColor,
        centerTitle: true,
        title: const Text('WEEB POS'),
        automaticallyImplyLeading: false,
      ),
      body: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(AuthRepositoryImpl()),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageAssetWidget(
                    path: AppAssets.shigu,
                    width: 200,
                    height: 200,
                    borderRadius: context.radius.all(999),
                  ),
                  AppDimens.verticalSpace30,
                  const GoogleSignInButtonWidget(),
                  AppDimens.verticalSpace40,
                ],
              ),
            ),
            AppDimens.verticalSpace10,
            const Text('©2023 Admiral YuuShi'),
            AppDimens.verticalSpace10,
          ],
        ),
      ),
    );
  }
}

class GoogleSignInButtonWidget extends StatelessWidget {
  const GoogleSignInButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        debugPrint('${state.runtimeType}');
        if (state.loginState.loadingState == LoadingState.success) {
          debugPrint('AUTH SUCCESS : ${state.loginState.data}');
          if (state.loginState.data ?? false) {
            debugPrint('LOGED IN, redirected...');
            context.go(PosPage.route);
          }
        }
      },
      child: Center(
        child: ButtonPrimaryWidget(
          text: 'Login dengan Google',
          icon: Ionicons.logo_google,
          color: context.colorTheme.primaryColor,
          onPressed: () {
            context.go(PosPage.route);
            // context.read<AuthBloc>().add(const AuthEvent.login());
          },
        ),
      ),
    );
  }
}
