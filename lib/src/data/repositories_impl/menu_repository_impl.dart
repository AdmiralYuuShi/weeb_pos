import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/core.dart';
import '../data.dart';

class MenuRepositoryImpl implements MenuRepository {
  final FirestoreService fss = FirestoreService();

  String menuItemPath(String merchantId) => '/Merchants/$merchantId/MenuItems';
  String groupMenuPath(String merchantId) => '/Merchants/$merchantId/GroupMenus';

  @override
  Future<Either<Failure, List<GroupMenu>>> getGroupMenus() async {
    try {
      List<GroupMenu> groupMenus = await fss.collectionGet(
        path: groupMenuPath(SharedPrefs().merchantId),
        builder: (doc) => GroupMenu.fromDocument(doc),
      );

      return Right(groupMenus);
    } catch (e) {
      debugPrint('getGroupMenu - err: $e');
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<MenuItem>>> getMenuItems() async {
    try {
      List<MenuItem> menuItems = await fss.collectionGet(
        path: menuItemPath(SharedPrefs().merchantId),
        builder: (doc) => MenuItem.fromDocument(doc),
      );

      return Right(menuItems);
    } catch (e) {
      debugPrint('getGroupMenu - err: $e');
      return const Left(ServerFailure());
    }
  }
}
