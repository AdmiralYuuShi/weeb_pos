import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';
import '../../data/data.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository _menuRepository;

  MenuBloc(
    this._menuRepository,
  ) : super(const MenuState(
          getGroupMenus: OperationLoadingState<List<GroupMenu>>(loadingState: LoadingState.init),
          getMenuItems: OperationLoadingState<List<MenuItem>>(loadingState: LoadingState.init),
        )) {
    on<MenuEvent>(_onEvent);
  }

  Future<void> _onEvent(MenuEvent event, Emitter<MenuState> emit) async {
    await event.when(
      getGroupMenus: () async {
        emit(state.copyWith(
          getGroupMenus: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final fetch = await _menuRepository.getGroupMenus();

        fetch.fold(
          (left) {
            emit(state.copyWith(
              getGroupMenus: const OperationLoadingState(
                loadingState: LoadingState.error,
                errMessage: 'Something Wrongs',
              ),
            ));

            emit(state.copyWith(
              getGroupMenus: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
          (right) {
            emit(state.copyWith(
              getGroupMenus: OperationLoadingState(
                data: right,
                loadingState: LoadingState.success,
              ),
            ));
          },
        );
      },
      getGroupMenusUpdated: (groupMenus) {
        emit(state.copyWith(
          getGroupMenus: OperationLoadingState(
            data: groupMenus,
            loadingState: LoadingState.success,
          ),
        ));
      },
      getMenuItems: () async {
        emit(state.copyWith(
          getMenuItems: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final fetch = await _menuRepository.getMenuItems();

        fetch.fold(
          (left) {
            emit(state.copyWith(
              getMenuItems: const OperationLoadingState(
                loadingState: LoadingState.error,
                errMessage: 'Something Wrongs',
              ),
            ));

            emit(state.copyWith(
              getMenuItems: const OperationLoadingState(loadingState: LoadingState.init),
            ));
          },
          (right) {
            emit(state.copyWith(
              getMenuItems: OperationLoadingState(
                data: right,
                loadingState: LoadingState.success,
              ),
            ));
          },
        );
      },
      getMenuItemsUpdated: (menuItems) {
        emit(state.copyWith(
          getMenuItems: OperationLoadingState(
            data: menuItems,
            loadingState: LoadingState.success,
          ),
        ));
      },
    );
  }
}
