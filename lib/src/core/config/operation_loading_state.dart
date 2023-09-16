import 'package:equatable/equatable.dart';

enum LoadingState { init, loading, success, error }

class OperationLoadingState<T> extends Equatable {
  final LoadingState loadingState;
  final String? errMessage;
  final T? data;

  @override
  List<Object?> get props => [loadingState, errMessage, data];

  const OperationLoadingState({
    required this.loadingState,
    this.errMessage,
    this.data,
  });

  OperationLoadingState copyWith({
    LoadingState? loadingState,
    String? errMessage,
    T? data,
  }) {
    return OperationLoadingState(
      loadingState: loadingState ?? this.loadingState,
      errMessage: errMessage ?? this.errMessage,
      data: data ?? this.data,
    );
  }
}
