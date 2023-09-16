part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _SignInEvent;
  const factory AuthEvent.logout() = _SignOutEvent;
}
