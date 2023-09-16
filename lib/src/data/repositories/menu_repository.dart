import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class MenuRepository {
  Future<Either<Failure, List<MenuItem>>> getMenuItems();
  Future<Either<Failure, List<GroupMenu>>> getGroupMenus();
}
