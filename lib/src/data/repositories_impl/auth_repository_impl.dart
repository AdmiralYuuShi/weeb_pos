import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../main.dart';
import '../../core/core.dart';
import '../data.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirestoreService fss = FirestoreService();

  String userDir({String? userId}) => '/Users${userId == null ? '' : '/$userId'}';

  @override
  Future<Either<Failure, bool>> login() async {
    UserData? user;
    try {
      // The `GoogleAuthProvider` can only be used while running on the web
      if (kIsWeb) {
        GoogleAuthProvider authProvider = GoogleAuthProvider();

        final UserCredential userCredential = await fbAuth.signInWithPopup(authProvider);
        User? googleUser = userCredential.user;
        debugPrint('LOGIN : ${googleUser?.displayName}:${googleUser?.email}');

        debugPrint('GOOGLE USER : ${googleUser?.email}');

        if (googleUser != null) {
          List<UserData?> users = await fss.collectionGet(
            path: userDir(),
            queryBuilder: (q) => q.where('email', isEqualTo: googleUser.email),
            builder: (doc) => doc.exists ? UserData.fromDocument(doc) : null,
          );

          user = users.firstOrNull;

          debugPrint('USER : ${user?.email}');

          SharedPrefs().userId = user?.docId;
          SharedPrefs().userAvatar = user?.avatar;
          SharedPrefs().userName = user?.name;
          SharedPrefs().merchantId = user?.merchantId;
        }

        debugPrint('AUTH REPO : ${user != null}');
        return Right(user != null);
      } else {
        debugPrint('login - err: UnimplementedFailure');
        return Left(UnimplementedFailure());
      }
    } catch (e) {
      debugPrint('login - err: $e');
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await fbAuth.signOut();
      SharedPrefs().userId = null;
      SharedPrefs().userAvatar = null;
      SharedPrefs().userName = null;
    } catch (e) {
      debugPrint('logout - err: $e');
      return const Left(ServerFailure());
    }
    return const Right(true);
  }
}
