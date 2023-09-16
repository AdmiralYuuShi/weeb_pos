part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    required OperationLoadingState<List<MenuItem>> getMenuItems,
    required OperationLoadingState<List<GroupMenu>> getGroupMenus,
  }) = _MenuState;
}
