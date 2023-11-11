import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class MenuRepository {
  Future<Either<Failure, List<MenuItem>>> getMenuItems();
  Future<Either<Failure, List<GroupMenu>>> getGroupMenus();
  Future<Either<Failure, Stream<List<GroupMenu>>>> streamGroupMenus();
  Future<Either<Failure, Stream<List<MenuItem>>>> streamMenuItems();
}
