import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';
import '../../data/data.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(
    this._authRepository,
  ) : super(const AuthState(
          user: null,
          loginState: OperationLoadingState<bool>(loadingState: LoadingState.init),
          logoutState: OperationLoadingState<bool>(loadingState: LoadingState.init),
        )) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.when(
      login: () async {
        emit(state.copyWith(
          loginState: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final login = await _authRepository.login();

        login.fold(
          (left) {
            emit(state.copyWith(
              loginState: const OperationLoadingState(
                data: false,
                loadingState: LoadingState.error,
                errMessage: 'Something Wrongs',
              ),
            ));

            emit(state.copyWith(
              loginState: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
          (right) {
            emit(state.copyWith(
              loginState: OperationLoadingState(
                data: right,
                loadingState: LoadingState.success,
              ),
            ));

            emit(state.copyWith(
              loginState: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
        );
      },
      logout: () async {
        emit(state.copyWith(
          logoutState: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final logout = await _authRepository.logout();

        logout.fold(
          (left) {
            emit(state.copyWith(
              logoutState: const OperationLoadingState(
                data: false,
                loadingState: LoadingState.error,
                errMessage: 'Something Wrongs',
              ),
            ));

            emit(state.copyWith(
              logoutState: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
          (right) {
            emit(state.copyWith(
              logoutState: OperationLoadingState(
                data: right,
                loadingState: LoadingState.success,
              ),
            ));

            emit(state.copyWith(
              logoutState: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
        );
      },
    );
  }
}
