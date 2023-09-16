part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required UserData? user,
    required OperationLoadingState<bool> loginState,
    required OperationLoadingState<bool> logoutState,
  }) = _AuthState;
}
