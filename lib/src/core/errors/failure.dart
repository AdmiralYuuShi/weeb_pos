abstract class Failure {
  const Failure();
}

class ServerFailure extends Failure {
  final Exception? exception;
  final StackTrace? stackTrace;

  const ServerFailure({
    this.exception,
    this.stackTrace,
  }) : super();
}

class UnimplementedFailure extends Failure {}

class UnknownFailure extends Failure {}

class AccessDeniedFailure extends Failure {}
