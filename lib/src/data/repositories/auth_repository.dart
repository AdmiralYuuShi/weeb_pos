import 'package:dartz/dartz.dart';

import '../../core/core.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login();
  Future<Either<Failure, bool>> logout();
}
