import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:go_router/go_router.dart';

import 'src/core/config/app_nav.dart';
import 'src/core/core.dart';
import 'src/data/data.dart';
import 'src/presentation/pages/auth/login_page.dart';
import 'src/presentation/pages/pos/pos_page.dart';
import 'src/presentation/presentation.dart';

final FirebaseAuth fbAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await SharedPrefs().init();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: dotenv.env['FB_API_KEY'] ?? '',
        authDomain: dotenv.env['FB_AUTH_DOMAIN'] ?? '',
        projectId: dotenv.env['FB_PROJECT_ID'] ?? '',
        storageBucket: dotenv.env['FB_STORAGE_BUCKET'] ?? '',
        messagingSenderId: dotenv.env['FB_MESSAGING_SENDER_ID'] ?? '',
        appId: dotenv.env['FB_APP_ID'] ?? '',
        measurementId: dotenv.env['FB_MEASUREMENT_ID'] ?? '',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.system;

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: PosPage.route,
        builder: (context, state) => const PosPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (BuildContext context) => AuthBloc(AuthRepositoryImpl())),
        BlocProvider<MenuBloc>(create: (BuildContext context) => MenuBloc(MenuRepositoryImpl())),
      ],
      child: MaterialApp.router(
        title: 'WEEB POS',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: _themeMode,
        routerConfig: _router,
      ),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
