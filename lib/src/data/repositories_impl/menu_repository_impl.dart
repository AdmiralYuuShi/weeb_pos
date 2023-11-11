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
      debugPrint('getMenuItems - err: $e');
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Stream<List<GroupMenu>>>> streamGroupMenus() async {
    try {
      return await _listGroupMenu(() async {
        return fss.collectionStream(
          path: groupMenuPath(SharedPrefs().merchantId),
          builder: (doc) => GroupMenu.fromDocument(doc),
        );
      });
    } catch (e) {
      debugPrint('getGroupMenu - err: $e');
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, Stream<List<GroupMenu>>>> _listGroupMenu(
      Future<Stream<List<GroupMenu>>> Function() getList) async {
    try {
      final stream = await getList();
      return Right(stream);
    } catch (e) {
      debugPrint('listGroupMenu - err: $e');
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Stream<List<MenuItem>>>> streamMenuItems() async {
    try {
      return await _listMenuItem(() async {
        return fss.collectionStream(
          path: menuItemPath(SharedPrefs().merchantId),
          builder: (doc) => MenuItem.fromDocument(doc),
        );
      });
    } catch (e) {
      debugPrint('getMenuItem - err: $e');
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, Stream<List<MenuItem>>>> _listMenuItem(
      Future<Stream<List<MenuItem>>> Function() getList) async {
    try {
      final stream = await getList();
      return Right(stream);
    } catch (e) {
      debugPrint('listMenuItems - err: $e');
      return const Left(ServerFailure());
    }
  }
}
